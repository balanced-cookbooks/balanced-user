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

describe user('coderanger') do
  it { should exist }
end

describe file('/home/coderanger/.ssh/authorized_keys') do
  its(:content) { should include('ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAIEAvV0vQo3OpzqDFDBHW5o5abdbNJNNg9Y') }
end

describe user('mahmoud') do
  it { should exist }
end

describe file('/home/mahmoud/.ssh/authorized_keys') do
  its(:content) { should include('ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEA4UgOn3ef6LUMrgTTmhXWMxnMZ') }
end

describe file('/home/marshall/.tmux.conf') do
  it { should be_a_file }
end

describe user('deploy') do
  it { should exist }
end

describe file('/home/deploy/.ssh/config') do
  it { should be_a_file }
end

describe file('/home/deploy/deploy.pem') do
  it { should be_a_file }
end

describe file('/home/deploy/.ssh/authorized_keys') do
  its(:content) { should include('ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAIEAvV0vQo3OpzqDFDBHW5o5abdbNJNNg9Y') }
  its(:content) { should include('ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEA4UgOn3ef6LUMrgTTmhXWMxnMZ') }
end
