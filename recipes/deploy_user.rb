user "deploy" do
  comment "deploy"
  system true
  shell "/bin/bash"
end

directory "/home/deploy" do
  owner "deploy"
  group "deploy"
  mode "0755"
  recursive true
end

directory "/home/deploy/.ssh" do
  owner "deploy"
  group "deploy"
  mode "0700"
end

cookbook_file "/home/deploy/.ssh/config" do
  source "home/deploy/.ssh/config"
  owner "deploy"
  group "deploy"
  mode "0644"
end

cookbook_file "/home/deploy/.ssh/deploy" do
  source "home/deploy/.ssh/deploy"
  owner "deploy"
  group "deploy"
  mode "0600"
end

cookbook_file "/home/deploy/.vault_s3_creds" do
  source "home/deploy/.vault_s3_creds"
  owner "deploy"
  group "deploy"
  mode "0600"
end
