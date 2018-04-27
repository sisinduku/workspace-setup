#
# Cookbook:: workspace-setup
# Recipe:: dotfiles
#
# Copyright:: 2018, The Authors, All Rights Reserved.

cookbook_file ::File.expand_path('~/.vimrc') do
  source '.vimrc'
  mode '0664'
  action :create
  not_if { ::File.exists?(File.expand_path('~/.vimrc'))  }
end
