#
# Cookbook Name:: i2d
# Recipe:: ws (workstation)
#
# Copyright (c) 2015 The Authors, All Rights Reserved.


include_recipe "i2d::base"
include_recipe "i2d::_users"
include_recipe "i2d::_sudoers"
include_recipe "openssh::default" # Allow password_authentication
include_recipe "chef-dk"

template '/etc/profile.d/chefdk.sh' do
  mode "0644"
  source "bash_profile.erb"
end


  # docker?
