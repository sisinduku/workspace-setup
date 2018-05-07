#
# Cookbook:: workspace-setup
# Recipe:: oh-my-zsh
#
# Copyright:: 2018, The Authors, All Rights Reserved.
user = data_bag_item('users', 'admin')

execute 'installing oh-my-zsh' do
  command 'sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"'
  not_if { File.directory?(File.expand_path('~/.oh-my-zsh')) }
end

git 'clone powerline fonts' do
  repository 'git://github.com/powerline/fonts.git'
  destination '/opt/fonts'
  depth 1
  action :sync
  notifies :run, 'execute[install-powerline-fonts]', :immediately
  not_if { File.directory?('/opt/fonts')  }
end

execute 'install-powerline-fonts' do
  cwd '/opt/fonts'
  command './install.sh'
  action :nothing
end

execute 'installing zsh 256 color' do
  command 'git clone https://github.com/chrissicool/zsh-256color "$HOME/.oh-my-zsh/custom/plugins/zsh-256color"'
  not_if { File.directory?(File.expand_path("~/.oh-my-zsh/custom/plugins/zsh-256color"))  }
end

execute 'installing zsh auto suggestions' do
  command 'git clone https://github.com/zsh-users/zsh-autosuggestions "$HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions"'
  not_if { File.directory?(File.expand_path("~/.oh-my-zsh/custom/plugins/zsh-autosuggestions"))  }
end

execute 'installing spaceship prompt' do
  command 'git clone https://github.com/denysdovhan/spaceship-prompt.git "$HOME/.oh-my-zsh/custom/themes/spaceship-prompt"'
  not_if { File.directory?(File.expand_path('~/.oh-my-zsh/custom/themes/spaceship-prompt')) }
end

execute 'create symlink of spaceship prompt' do
  command 'ln -s "$HOME/.oh-my-zsh/custom/themes/spaceship-prompt/spaceship.zsh-theme" "$HOME/.oh-my-zsh/custom/themes/spaceship.zsh-theme"'
  not_if { File.exist?(File.expand_path('~/.oh-my-zsh/custom/themes/spaceship.zsh-theme')) }
end

