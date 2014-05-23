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

balanced_user 'andrew' do
  sudo true
  github_username 'bninja'
  ssh_keys [
    'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQClYhtXQPxx7FBOer6b9RDuXu3lKbUVs5HMJKXNbXKjQKkMeq7xHGRN0/jX0wu7ZRX6NmAjykqd4xUq6b4SXO8voL4jltbGkbqUD59WNipjlZ5ZF6TSda1cDREcqGdGMGuK6/IQujwOE45xX8WFzvSE5Xx1RI9LeGuWT9a1BC8ivhwtQNBA9mNzVDcWql8tq9LDh/xRsrqls/ul+XT5Ti0EviTdycCi3DSo2aPKYnwYm8vE5gP/lRlxSpDYP4y7WuE88PL4rCOY+3D1zBVPfRqKz+DVAyXXsoVJ1pLKBVKeiAhr3COWSkZIVr4/3IcHRzePyHDbMTUZfEZxKVh8Vnmb ai@ai-xg41',
    'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDXg6ZXth790ljL7nnRsLvdpXz1RnSCTmABrIjQoxnEFo96PkbFcAScXn12cHq6jqslNG9yLr4QXC3zbQcyuDds110CxJHTw6g0e3tjynj3FT1cfBzohrosX0SNvrVTz2g2G1V35cGhzgUCvGpYyrqCwpjA6auGbSGPcmvZXRbeqY8hjyPDKcy6RfynTZtNWNG5nqhe91qBP2oj1FGnvZIpt+pfmyZZttxC2qzuPOenP7Ahw+RLPhEuBz79dm3CaQv4iSRwFxyfpClx4CdO1bXXGPjlmPo+RV9LqVDes92bQYZ0Pv0ZJGXCjL4vXBK1QA1vzMJs2MqfjqBnrcaVBpN7 ai@ai-gazelle',
  ]
end

balanced_user 'ben' do
  sudo true
  ssh_keys [
    'ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAxQhQg9+ZSF4+CMngRgYKiyas8wHnmRYw6S8rn5SgS/QCIGc7Cr04LAqvfbEVIEyDygisaiPlSKL7N3mK3FqXO5IkWahesiCYiicBIEk0P+GhMd67cbdfHOn5M99Wp/W9LxjDQb6e3Pwks4QrcCzm3rhQuB/gZEODU4tEvDLaT2/+8j1N3mXeWew9qa43wSInrWaNKzsH9/ZwS5/ssExMtLasD3/8K8Viq79uKMnRhu/Y2YIsghDYEvAUdcV/9vdMbWjyvSPr/71A34f4HqQa09KIHdGkoJVOZ/td6KKjSI/LISMlOkc4HMR8mKmq8m21W9lZDiW52nbq2Ya9KmMw7Q== ben@unfiniti.com',
  ]
end

balanced_user 'coderanger' do
  sudo true
  github_username 'coderanger'
end

balanced_user 'mahmoud' do
  sudo true
  github_username 'mahmoudimus'
  ssh_keys [
    'ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEA4UgOn3ef6LUMrgTTmhXWMxnMZMW+ifSRj8ORTAEYXyRpEzPdAHA0hLxokLKPJPZL1XYzqmq7p6ytEjOtRUmCrKtfZug9G365glhMCp2JAbfz7XNkeqda7tVx3XYWV1inLGqKhoW15WIh+N2+hbWhrBhr8KakuL03d3ZEu/naRgsU89oiuHb+U1iOwrLZPtbyPJWKclkIZ+yVsiWJyGrSAYsayi+fTv81n7YgvnBb3lq5XUVNfoPZ44On5QM7BvoV3QgqaGKI/hLbqAdwXZly4qzcGVaiHiee5XFWI9K/QlGoiOEOCcpTj0yJ5j2AYcBm9ZLd+0G3O0P5bM4/1FadHw== mahmoud@gauss',
  ]
end

balanced_user 'marshall' do
  sudo true
  github_username 'mjallday'
  dotfiles %w{.tmux.conf}
  ssh_keys [
               "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAz1wTM+zhEP001ShrcbhPNQnO7hrBt7bGWhmU+s/K5QsLRSTYErjU75msUVtoWxe3oPjwp6q/Toc2KDcZgzm3guNZYSWdskUwSIZD47rjwmyzsYLlXPZzwtDJQqV813XZR/R3I73fUSKykfDb3vG5j8wr7d0lGvePoKPZEdL1N0F5ogsT1NEUZCSYpSo3M3AHH5Uu8p1hBAQFsgsXXQGh2I27j7z+DgNDVHd0nLb85YSmtlYzujnlWbn1+4j0SUxfodWi2bvDVpAWljgk3H7kiL7kAQgDgTFXE/Ydw88xPgHSx/pF6agb7Wf7xvJG9TX07oMIfdOfH6rLSBgCDGvuRQ== Marsh@MJ-2.local",
               "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCxEOvSm7Vi+sCN5FAaftfBIq3nwUOn53P/Rg9+NU6OEdFlUqY/u44P/fCCSv6aQ6wFximmhevMbW9Jeo24Zra0obNELKTyq5/VqV5behykfBv0QAGKJaPNEacHHtVJDtgUbGw2S5YRfZ6gzMpDy8+3fsMfpeWQuGVvYPYwZA3i8AyIOAr02PJO+L1CBlohYM2zrd0S4OiYCkJXZzcNJy9kuxrEeYHpzABBjgkXwjps/CY2rS/DGtrx4q6jxsRf3Ep1yXcD0M96p/8NpplUeaDaZ+sDT79seCbQz7zC0flruSNE7LQ2/WkKnMXBXl/Q27ns5hDCK6Cs5zURT+k/5gl9 marshall@Joys-MacBook-Air.local",
               "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDi/Am4kcOWa9W7Mm9tdjn4/yw59A1IwcKu5yu7woCt99H5ti5PzjzTsi6WIuxWxG5fDT+eHPUTAQ7X9ZfEos5F984H54WTNQnJwiA8iczoqJ2qTKCCsFTo3VufdEsn02C3wchXl1MySMTCRoQ9GicGh9BNZ/n4NHQKTBN7538XTJQcerUdLU0oNKeCQkOPODn82vT/HLwzHoS08KWni06lJuMbAfyIPkcTaE26wkxp6BPJvA0mfgpq1SEzYlRhrDJbJXKIywM+7VTQ21pD7V3dOlrOciHAlMfZ+CR7+FO7zxaAL1MmFeKLqiZl5tHS3lOye5+Q7OHbiRqDev3KKIpP marshall@28-cf-e9-60-3d-cf.local.tld",
               "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQChFksEfUMyVj+sSfOlG/x4JUjH1RjoQfFIIkE6itTIy3GU+1w7qMqLsf3UNx9zgTK5eFEEKxmFFt5DI5UM0OZ/KFqMqc7JzZc15lcel1aDcqUDFfiJOPHpUAiR0oUwD/UBte3tA+vtBLb921AlttpIPhaztYJU/OqtPoe7XoTMyPIabN5nHQzczH76YUa+n2M1IA5gG7Tg1Z3jAP8Hagk8XKih5GIn8FmE3YLABW804msUJia0hxsmi+LhIAD3JsWhx0tOzofAf09zOZe9pS1WHZ7zseOWIuV8Rpvyb/sW+PYp+N1DUOCXz0/BPeFlXYvNcUc8e0fT7gtchZEkl03f marshall@balancedpayments.com"
           ]
end

balanced_user 'matthew' do
  sudo true
  ssh_keys [
    'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDAW+o9BIhZWhcZPVFcUCvprUUd2EGFSx8NNbah1LnR9vMf7vYmS1MUDCa9RlyFAFU07qfAA+TsecTxXwq6RVR6lXKi20FkJ6onAWecEFj/UtwAMVttAEgQVAdVmLCFFtO8tzIi5uPteBK93jQXZLV2W0JkG9trIgxlSBzOUB8GYQTVVYPh8CtXTTUrVONnnkUFOCDuJg1bhXo81BUTwLoy/XYr34Cxnz+ducwA4dDcgniYL0Sn+9VBu067FL/4hOJk2fOYdP9Gdtms6+5/W+pwEoBN80t2T6ES2EiP1QgyVD19gGsE98N/XuWnD7A8jzQknslPJPYNxhx0sEQ3Tx5a8tWHKAmP7oOtS5h2hfARKRaukDnHBzckVMNXk+vNr2MInJOIzEfKnGC1jbpcQ94JWckAUTvI2Np+28b5IjYrBRn58qGfy1iqemvLjxzpUkuxy0w1vgrgzxlNIAOKWn3bkwMqrtOwZVmmdiEUgJDmc4VOCXT+EqxDCMsPK84lBOj1J6ZjfAjhggZEjWF0QCetJIROT8cB9NEGcugx/lXv/JvSCcK/wO1JjFdwzvxLxy2tPMvmLpeNNlzgrf5vsgovzBs4UmL9w2pEUJEzgftXeHgibtgX/CTRvILOnqRqxXkw+ZUdDMAdAzru2DIOEQBKl6DtZMzPGIquH3ey9HcUOw== matthew@MFL-Lenovo-Linux',
  ]
end

balanced_user 'msherry' do
  sudo true
  ssh_keys [
    'ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEA1mssM89wTAx0xOW6g99Z2NQjlJW/1Jif+XHXtssXrEJZQcDi7yvt+1/bKn/Vr26TjoDgxYSTyvOo1CxLseZHk6/+sVvWQsGRlcy7ukkmErnpaWqkci2xKOf4h9uyOsU9R8CK8dtaZGozNGk/eP2dtHu4uN1GUcIFkhvo+pPhzkmjAz9aUh5JPWsyFGGT7yKYsNV/FaOPHxDQcWMhB5UtL7b6erVEGu+1E3A3HvSsHWolnKqmnVVKodnypfX5+RMGIzEkSwaseH3bSTh9IuwtvWggFBhJpCNRqqnJQwwxCOX7jX4pgSJVl23N+/jOafnoGmMxjowYQfSgSU4l646LUw== msherry@ono',
  ]
end

balanced_user 'patrick' do
  sudo true
  ssh_keys [
    'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDoSwJFsGuVtkQ+0yvO2eRPrbU4kxZzLc0qRtmYEnLC7W261gieE+c/7bOYZj62uqdGdbM+BBsvWBAMo/FXGepOt/FghrW4ecBnXBHYosSaZflje5X7Ayg6aTKUFUjZCxrYuHbTkZxpqEnHVm0sZc72wfAoBS8D9NWC2SQMe5StPOIz+wgSbpzQkFzwDsH9ApzaCK95Ea20D6NJjYFOvhl3PSII4KPy28ODOWDn2A2CriQTso+5x+veApF+NmmLl8oFYamlnOvf8jFxgxnYEgCfKAQiDQ6Vt2RcGlHxoNUxw4P6/AKZ02vGrvAYW1z4R1cGde/QnUzvE3VJAl8kcmBp pc@Patricks-MacBook-Pro.local',
  ]
end

balanced_user 'richie' do
  sudo true
  ssh_keys [
    'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC6j8nXE/N4pxrdoAHwir3puoMvBvX3hMqDoQjyreTUTEGnpsn+0A6vrjVuod0pAypxgWsFtHsP4vy8t9wiFALPZyxcW7TdUjPJ6fxlwdfyto70jGp9gkEam8ChrgyKX+VUgg1rd2fmrLmWjEQmD6bbZ/D5fgTLR+W/1RLAJxsaGQO1m9FwnF1rDkD5G+ahZkKksvcdgx7dZx1+SPCZYkXL9bzpxpydqxZvN4WfTas1cwket4iCx3RvQpRLkdnk01vmDeXH3+aubVk88c+dK1C7T5uQf/c3PoTSLcRdXG1QX/ImswfumEqDWgMd+E4aJohI8L+bqVa4HnrvvkCdE207 ryan@Richies-MacBook-Pro.local',
    'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCrkI7ecLo974GOylgiPeKVqNAVoFcokDPuf1Q0G2aTnnU8aCp2CuSlE9LRb6hqHalUr/Rh7yp5UbBNq1xwLkFk5BAiUM8OSex93pMQn/2PK2apTWHTwyg11VwiWMLPu0ghDV4Ly1AzSV745k2AlwO4FxBgNlSaOrDe23mwdJJFkJGL1Ipglm4hqQsuPTFjNISTFtDXs3tNQQiE+635/kGO79HwOUCLUSw6c9rVu3FUWaEJeER8TCbKLad904aQ/Y+Vu8ZocAGrbDYnsoKymy02++uweRJWXsKI1nuHayywO8VTyTCwBfRAjAN4Q7XBwArFMQKhVsyO4iKo9ZRt4AC5 richardserna@Richards-MacBook-Pro.local',
  ]
end

balanced_user 'carlos' do
  sudo true
  github_username 'cohitre'
  ssh_keys [
    'ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAxbldqS3hdxcmDYhZXzWSIJMWLI9uq6Oy1eqCKzy12GsfKY718PVtpWk+2Cds2ZhYlez4a1/COp/4JBUUGnhTZjv7R9xn5gDmdRI/FgyCuCnH6aXybV7tNXpQ1goJjHGP5uMIefvtRoJrgU+gyaCTYYanHgc8Z/DCwu9r+hixQZGf2sNnSWOgHkBVpIN2x+EHfd2aqAWA383rWsdHMi2cP0z0whR5A8RKiqD6m8E5tpEbmSEPG8S8hFu2POCHYuuBYMr6WVKre+YPsMRJoyU9rMyAm5ZO1VnaNiQ0Bq3PuQIfe+5yLgaw+LpKaW1ViqvtyERfRtmUA4kUNVPQlaBQDQ== carlos@medusa.local'
  ]
end

balanced_user 'victorlin' do
  sudo true
  ssh_keys [
    'ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAIEAiKrzAJw9TrHEVDSXR4+5I8jPK4ABztYF8gId6eQScVGdhtOYXLno4ZRQfNxn2OPZVK/9/lDnni4eeNLc87oKTWWOlm8Jdj3nn4Yn/7OFLQ9b0rczaiRYZ0rcXt0c33DeEOVpQFDGvCoQAg/GCxCTwRlBLim1DhZoOgIiq8JhWKM= victorlin@victorlntekiair',
  ]
end

# this is the user for running SSH commands from Rundeck
balanced_user 'rundeck' do
  sudo true
  ssh_keys [
    # the corresponding private key is at balanced-citadel/balanced_cmdr/rundeck.pem
    'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDB2amaQhepruS2kByF0QT57pHwm0fd/m6iS9Bp/xE70bCUu1RDJa6b/nKdZt1VPsJt2gPG+DauQNrPeVh0xRhsPPG39YniFl0eQ5sg9hSBrodPVMGDNohyWv/8VA4/zrW4AWtLhPpQnBB0Xf+vvlCwpW9K7gb1iHyG7DFBjw6QFUqy/SzuvS/GiZ1JRp32/rH/1FidqDU5ID8QK52fbM/L4rDfGUxKSc0VmMxFxenb/UmMMgPpMAyICOzhENkdndOFi2AQeYciwC+x+AONf9CiAZ/mIv5aKVCb755kP6siT+JoMv8kxo2c60XWdx2uT5oEHpzDTgktGEa9UBjBhOKR balanced-cmdr',
  ]
end


balanced_deploy_user 'deploy'

cookbook_file '/etc/security/limits.d/default.conf' do
  source 'etc/security/limits.d/default.conf'
end
