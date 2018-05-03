#
# Cookbook:: workspace-setup
# Recipe:: rbenv
#
# Copyright:: 2018, The Authors, All Rights Reserved.
user = data_bag_item('users', 'admin')

rbenv_user_install user['username']
rbenv_ruby '2.5.1' do 
  user user['username']
end
rbenv_global '2.5.1' do
  user user['username']
end
