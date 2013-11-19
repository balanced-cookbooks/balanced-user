#
# Cookbook Name:: balanced-user
# Recipe:: default
#
# Copyright 2013, Balanced
#
# All rights reserved - Do Not Redistribute
#

node.set['user']['ssh_keygen'] = false
include_recipe "balanced-user::data_bag"
include_recipe "balanced-user::deploy_user"
