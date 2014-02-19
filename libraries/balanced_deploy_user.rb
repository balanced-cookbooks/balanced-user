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

require File.expand_path('../balanced_user', __FILE__)

class Chef
  class Resource::BalancedDeployUser < Resource::BalancedUser
    def ssh_keys(arg=nil)
      []
    end

    def github_username(arg=nil)
      false
    end

    # Find all keys for all other users
    def _ssh_keys
      keys = []
      run_context.resource_collection.each do |r|
        if r.is_a?(BalancedUser) && !r.is_a?(BalancedDeployUser)
          keys += r._ssh_keys
        end
      end
      keys
    end
  end

  class Provider::BalancedDeployUser < Provider::BalancedUser
    private

    def create_user
      r = super
      create_ssh_config
      create_deploy_key
      r
    end

    def create_ssh_config
      template "/home/#{new_resource.username}/.ssh/config" do
        source 'deploy_ssh_config.erb'
        owner new_resource.username
        group new_resource.username
        mode '644'
      end
    end

    def create_deploy_key
      file '/home/deploy/deploy.pem' do
        content citadel['deploy_key/deploy.pem']
        owner new_resource.username
        group new_resource.username
        mode '600'
      end
    end
  end
end
