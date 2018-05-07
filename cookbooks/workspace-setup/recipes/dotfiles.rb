#
# Cookbook:: workspace-setup
# Recipe:: dotfiles
#
# Copyright:: 2018, The Authors, All Rights Reserved.
user = data_bag_item('users', 'admin')

cookbook_file ::File.expand_path('~/.vimrc') do
  source '.vimrc'
  mode '0664'
  owner user['username']
  action :create
end

cookbook_file ::File.expand_path('~/.zshrc') do
  source '.vimrc'
  mode '0664'
  owner user['username']
  action :create
end

