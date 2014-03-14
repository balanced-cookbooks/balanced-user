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

require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

%w(deploy root coderanger).each do |user|
  describe user(user) do
    it { should exist }
  end
end

sample_users = {
    'mahmoud' => 'ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEA4UgOn3ef6LUMrgTTmhXWMxnMZ',
    'coderanger' => 'ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAIEAvV0vQo3OpzqDFDBHW5o5abdbNJNNg9Y',
}

sample_users.each do |user, key|
  describe user(user) do
    it { should exist }
  end
  describe file("/home/#{user}/.ssh/authorized_keys") do
    its(:content) { should include(key) }
  end
end

# dotfiles
describe file('/home/marshall/.tmux.conf') do
  it { should be_a_file }
end

# file limits

describe file('/etc/security/limits.d/default.conf') do
  it { should be_a_file }
  it { should contain '*               soft    nofile         30000' }
  it { should contain '*               hard    nofile         30000' }
end

describe file('/home/deploy/.ssh/config') do
  it { should be_a_file }
end

describe file('/home/deploy/deploy.pem') do
  it { should be_a_file }
end

describe file('/home/deploy/.ssh/authorized_keys') do
  sample_users.values.each do |key|
    its(:content) { should include(key) }
  end
end
