#
# Cookbook:: workspace-setup
# Recipe:: packages
#
# Copyright:: 2018, The Authors, All Rights Reserved.

apt_update

%w(zsh wget git).each do |package|
  package package
end
