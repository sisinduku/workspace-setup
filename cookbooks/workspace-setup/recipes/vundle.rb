#
# Cookbook:: workspace-setup
# Recipe:: vundle
#
# Copyright:: 2018, The Authors, All Rights Reserved.
user = data_bag_item('users', 'admin')

directory "/home/#{user['username']}/.vim" do
  owner user['username']
end

directory "/home/#{user['username']}/.vim/bundle" do
  owner user['username']
end

directory "/home/#{user['username']}/.vim/colors" do
  owner user['username']
end

execute 'install vundle for vim' do
  command 'git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim'
  not_if { File.exist?(File.expand_path('~/.vim/bundle/Vundle.vim')) }
  notifies :run, 'execute[install vim plugin]' 
  notifies :run, 'execute[copy solarized color]' 
end

cookbook_file 'solarized setting' do
  source 'vim_color'
  path ::File.expand_path('~/vim_color')
  not_if { File.exist?(File.expand_path('~/vim_color')) }
end

execute 'install vim plugin' do
  command 'vim +PluginInstall +qall'
  action :nothing
end

execute 'copy solarized color' do
  command 'cp $HOME/.vim/bundle/vim-colors-solarized/colors/solarized.vim $HOME/.vim/colors/'
  not_if { File.exist?(File.expand_path('~/.vim/colors/solarized.vim')) }
  notifies :run, 'execute[copy solarized color setting]'
  action :nothing
end

execute 'copy solarized color setting' do
  command 'cat $HOME/vim_color >> $HOME/.vimrc'
  action :nothing
end

