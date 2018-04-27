#
# Cookbook:: workspace-setup
# Recipe:: oh-my-zsh
#
# Copyright:: 2018, The Authors, All Rights Reserved.

execute 'Installing oh-my-zsh' do
  command 'sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"'
  not_if { File.directory?(File.expand_path('~/.oh-my-zsh')) }
end

execute 'Installing spaceship prompt' do
  command 'git clone https://github.com/denysdovhan/spaceship-prompt.git "$HOME/.oh-my-zsh/custom/themes/spaceship-prompt"'
  not_if { File.directory?(File.expand_path('~/.oh-my-zsh/custom/themes/spaceship-prompt')) }
end

execute 'Create symlink of spaceship prompt' do
  command 'ln -s "$HOME/.oh-my-zsh/custom/themes/spaceship-prompt/spaceship.zsh-theme" "$HOME/.oh-my-zsh/custom/themes/spaceship.zsh-theme"'
  not_if { File.exist?(File.expand_path('~/.oh-my-zsh/custom/themes/spaceship.zsh-theme')) }
end
