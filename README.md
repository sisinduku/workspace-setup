# workspace-setup
This cookbooks will setup your machine into ready-to-use environment for developing applications

## What will be installed
This cookbooks will install several things:
* ZSH
* wget
* vim
* git
* postgresql
* rbenv (including ruby 2.5.1)
* oh-my-zsh

and it will be provisioning several dotfiles and plugin:
* .zshrc
  * spaceship theme
  * git
  * gitfast
  * fasd
  * gradle
  * npm
  * web-search
  * history
  * zsh-256color
  * zsh-autosuggestions
  * zsh-syntax-highlighting
* .vimrc
  * vundle
  * nerdtree
  * syntastic
  * vim-colors-solarized
  * vim-tmux-navigator
  * auto-pairs
  * vim-indexed-search
  * vim-fugitive
  * nerdtree-git-plugin
  * undotree
  * rainbow_parentheses
  * splitjoin
  * simplyfold
  * youcompleteme

## Requirement
First, you need to install ChefDK. You can follow this guideline:
[Installing ChefDK](https://docs.chef.io/install_dk.html)

## How to use
Clone this repository:
  ```
  git clone https://github.com/sisinduku/workspace-setup.git $HOME/workspace-setup && cd $HOME/workspace-setup
  ```

Install dependency:
  ```
  berks vendor cookbooks
  ```

Change name of user which you want to install in
  ```
  cookbooks/workspace-setup/data_bags/users/admin.json
  ```

Running chef solo
  ```
  chef-solo -c solo.rb -j recipes.json
  ```
