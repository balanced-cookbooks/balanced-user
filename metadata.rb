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

name 'balanced-user'
version '1.0.20'

maintainer 'Noah Kantrowitz'
maintainer_email 'noah@coderanger.net'
license 'Apache 2.0'
description 'Create system users for Balanced'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))

depends 'balanced-citadel', '~> 1.0'
depends 'poise', '~> 1.0'
depends 'sudo', '~> 2.5'
depends 'user', '~> 0.3'
depends 'ulimit', '~> 0.3'
