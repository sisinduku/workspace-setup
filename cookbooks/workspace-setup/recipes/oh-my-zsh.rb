#
# Cookbook:: workspace-setup
# Recipe:: oh-my-zsh
#
# Copyright:: 2018, The Authors, All Rights Reserved.

execute 'Installing oh-my-zsh' do
  command 'sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"'
  not_if File.directory?(File.expand_path('~/.oh-my-zsh'))
end
