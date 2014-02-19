#
# Author:: Noah Kantrowitz <noah@coderanger.net>
#
# Copyright 2014, Balanced, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

class Chef
  class Resource::BalancedUser < Resource
    include Poise
    actions(:create, :remove)

    attribute(:username, name_attribute: true)
    attribute(:sudo, equal_to: [true, false], default: false)
    attribute(:ssh_keys, kind_of: [Array, String], default: [])
    attribute(:github_username, kind_of: [String, FalseClass], default: lazy { username })

    # Massage all SSH keys
    def _ssh_keys
      keys = Array(ssh_keys)
      if github_username
        github_keys = begin
          Chef::HTTP.new('https://github.com').get("#{github_username}.keys")
        rescue Net::HTTPServerException
          ''
        end
        keys += github_keys.split("\n")
      end
      keys
    end
  end

  class Provider::BalancedUser < Provider
    include Poise

    def action_create
      converge_by("create user") do
        notifying_block do
          create_user
          grant_sudo if new_resource.sudo
          create_bashrc
          create_bashrc_d
        end
      end
    end

    private

    def create_user
      user_account new_resource.username do
        ssh_keygen false
        ssh_keys new_resource._ssh_keys
      end
    end

    def grant_sudo
      sudo new_resource.username do
        user new_resource.username
        nopasswd true
      end
    end

    def create_bashrc
      template "/home/#{new_resource.username}/.bashrc" do
        source 'bashrc.erb'
        owner new_resource.username
        group new_resource.username
        mode '644'
      end
    end

    def create_bashrc_d
      directory "/home/#{new_resource.username}/.bashrc.d" do
        owner new_resource.username
        group new_resource.username
        mode '755'
      end
    end
  end
end
