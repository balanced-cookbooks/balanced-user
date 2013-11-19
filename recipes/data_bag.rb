bag = node[:user][:data_bag_name]

users_array = data_bag(bag)
ssh_keys_all = Array.new

Array(users_array).each do |i|
  u = data_bag_item(bag, i.gsub(/[.]/, '-'))
  if u['skip'] then
    # Why do we have a jenkins user data bag again?
    next
  end
  username = u['username'] || u['id']

  # Collecting all the ssh keys
  keys = u['ssh_keys'] || []
  keys.each do |k|
    ssh_keys_all << k
  end

  next if username == 'deploy' # We are adding the deploy user separate
  user_account username do
    %w{comment uid gid home shell password system_user manage_home create_group
        ssh_keys ssh_keygen }.each do |attr|
      send(attr, u[attr]) if u[attr]
    end
    action u['action'].to_sym if u['action']
  end
  balanced_user_bashrc username
  balanced_user_sudoer username if u['sudoer']
end

# Deploy user
u = data_bag_item(bag, 'deploy')
user_account "deploy" do
  %w{comment uid gid home shell password system_user manage_home create_group
      ssh_keygen }.each do |attr|
    send(attr, u[attr]) if u[attr]
    ssh_keys ssh_keys_all
  end
  action u['action'].to_sym if u['action']
end
balanced_user_bashrc "deploy"
balanced_user_sudoer "deploy" if u['sudoer']
