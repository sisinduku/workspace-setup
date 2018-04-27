#
# Cookbook:: workspace-setup
# Recipe:: packages
#
# Copyright:: 2018, The Authors, All Rights Reserved.

%w(zsh).each do |package|
  package package
end
