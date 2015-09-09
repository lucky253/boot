#!/usr/bin/env bash

# install basics
sudo apt-get install ssh git emacs software-center gnome-terminal software-properties-common

sudo apt-add-repository ppa:synapse-core/testing
sudo apt-get update
sudo apt-get install synapse

# configure git
git config --global user.email "lewis.hoffman@gmail.com"
git config --global user.name "Lewis Hoffman"
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global push.default simple


######## MANUAL STEPS #########

# WEB: Download chrome
sudo dpkg -i ~/Downloads/chrome-xxx.deb
sudo apt-get install -f

google-chrome-stable
# WEB: log in:to chrome

# generate new ssh key
ssh-keygen

# WEB: install new ssh key in github

# WEB: Download RubyMine.

######## END MANUAL STEPS #########




git clone git@github.com:leword/boot.git

# setup dotfile symlinks
cd ~
ln -sf boot/dotfiles/.gconf .
ln -sf ~/.bashrc ~/boot/dotfiles/.bashrc
ls -sf ~/.config/xfce4 ~/boot/dotfiles/.config/xfce4
ls -sf ~/.config/xfce4-session ~/boot/dotfiles/.config/xfce4-session
ls -sf ~/.RubyMine70/config ~/boot/dotfiles/.config/xfce4-session
