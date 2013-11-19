action :create do
  directory "/etc/sudoers.d" do
    owner "root"
    group "root"
    mode "0750"
  end

  template "/etc/sudoers.d/#{new_resource.username}" do
    source     'sudoer.erb'
    owner      'root'
    group      'root'
    mode       '0440'
    variables  :user => new_resource.username
  end
end

action :remove do
  file "/etc/sudoers.d/#{new_resource.username}" do
    backup false
    action :delete
  end
end
