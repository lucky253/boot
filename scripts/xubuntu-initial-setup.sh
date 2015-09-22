#!/usr/bin/env bash

# install packages
sudo apt-add-repository ppa:synapse-core/testing
sudo apt-get update
sudo apt-get install ssh git software-center gnome-terminal \
  software-properties-common default-jdk synapse curl \
  postgresql-9.3 libpq-dev nodejs chromium-chromedriver sphinxsearch

sudo ln -s /usr/lib/chromium-browser/chromedriver /usr/local/bin/chromedriver

# configure git
git config --global user.email "lewis.hoffman@gmail.com"
git config --global user.name "Lewis Hoffman"
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global push.default simple


# MANUAL: Download chrome
sudo dpkg -i ~/Downloads/chrome-xxx.deb
sudo apt-get install -f

# MANUAL: log in google account in chrome

# MANUAL: Download RubyMine


# generate new ssh key
ssh-keygen

# MANUAL: install new ssh key in github

# get boot project
git clone git@github.com:leword/boot.git

# setup dotfile symlinks
ln -sf ~/boot/dotfiles/.gconf          ~/.gconf
ln -sf ~/boot/dotfiles/.bashrc         ~/.bashrc
ln -sf ~/boot/dotfiles/.config/xfce4   ~/.config/xfce4
ln -sf ~/boot/dotfiles/.config/synapse ~/.config/synapse


~/boot/scripts/link-rubymine.sh
