#
# Cookbook:: workspace-setup
# Recipe:: packages
#
# Copyright:: 2018, The Authors, All Rights Reserved.

apt_update

%w(zsh vim wget git postgresql).each do |package|
  package package
end
