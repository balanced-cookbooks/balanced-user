action :create do
  my_home = new_resource.home || "#{node['user']['home_root']}/#{new_resource.username}"

  template "#{my_home}/.bashrc" do
    #cookbook  'user'
    source    'bashrc.erb'      # This doesn't really need to be a template...
    owner     new_resource.username
    group     Etc.getpwnam(new_resource.username).gid
    mode      '0644'
  end
end
