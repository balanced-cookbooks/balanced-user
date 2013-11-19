# -*- mode: ruby -*-
# vi: set ft=ruby :

# We'll mount the Chef::Config[:file_cache_path] so it persists between
# Vagrant VMs
host_cache_path = File.expand_path("../.cache", __FILE__)
guest_cache_path = "/tmp/vagrant-cache"

default = {
  :user => ENV['OPSCODE_USER'] || ENV['USER'],
  :project => File.basename(Dir.getwd),

  # AWS stuff
  :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
  :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY'],
  :keypair => ENV["AWS_USER_KEYPAIR"],
  :ami => "ami-734c6936",
  :region => "us-west-1",
  :instance_type => "m1.medium"
}

VM_NODENAME = "vagrant-#{default[:user]}-#{default[:project]}"

Vagrant.configure("2") do |config|

  config.berkshelf.enable = true

  config.vm.box = 'opscode-ubuntu-12.04'
  config.vm.box_url = 'https://opscode-vm.s3.amazonaws.com/vagrant/opscode_ubuntu-12.04_provisionerless.box'

  config.vm.hostname = VM_NODENAME

  config.omnibus.chef_version = :latest

  # ssh
  config.ssh.max_tries = 40
  config.ssh.timeout   = 120
  # Enable SSH agent forwarding for git clones
  config.ssh.forward_agent = true

  config.berkshelf.enable = true

  config.vm.provider :virtualbox do |vb, override|
    # Give enough horsepower to build without taking all day.
    vb.customize [
                  "modifyvm", :id,
                  "--memory", "2048",
                  "--cpus", "2",
                 ]

    config.vm.network :private_network, ip: "33.33.33.10"
  end

  config.vm.provider :aws do |aws, override|
    # override the vm boxes and the urls for AWS provider
    override.vm.box = "dummy"
    override.vm.box_url = "https://github.com/mitchellh/vagrant-aws/raw/master/dummy.box"

    aws.access_key_id = "#{default[:access_key_id]}"
    aws.secret_access_key = "#{default[:secret_access_key]}"
    aws.ami = "#{default[:ami]}"
    aws.region = "#{default[:region]}"
    aws.instance_type = "#{default[:instance_type]}"
    aws.keypair_name = "#{default[:keypair]}"
    aws.tags = {
      'Name' => config.vm.hostname
    }

    # Disables tty for sudo access since Amazon Linux has tty enabled by default
    # This still might fail though since Vagrant might run it's rsync command before
    # cloud-init starts.
    #
    # If it does fail you'll get a message that says:
    #
    #      The following SSH command responded with a non-zero exit status.
    #      Vagrant assumes that this means the command failed!
    #
    #      mkdir -p '/vagrant'
    #
    #      Stdout from the command:
    #
    #
    #
    #      Stderr from the command:
    #
    #      sudo: sorry, you must have a tty to run sudo
    #
    # See:
    # - https://github.com/mitchellh/vagrant-aws/issues/72
    # - https://github.com/mitchellh/vagrant-aws/issues/83
    # - http://stackoverflow.com/questions/17413598/vagrant-rsync-error-before-provisioning
    #
    # The solution (even if this fails) is to just run `vagrant provision` again
    aws.user_data = <<EOF
#!/bin/bash
echo 'Defaults:root,ec2-user !requiretty' > /etc/sudoers.d/999-vagrant-cloud-init-requiretty
chmod 440 /etc/sudoers.d/999-vagrant-cloud-init-requiretty
EOF

    override.ssh.username = "ec2-user"
    override.ssh.private_key_path = "#{ENV['AWS_HOME']}/#{default[:keypair]}.pem"
  end

  config.vm.provision :chef_solo do |chef|
    chef.log_level = :debug
    chef.data_bags_path = '../../data_bags'
    chef.run_list = %W(recipe[#{default[:project]}::default])
  end
end

