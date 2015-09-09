#!/usr/bin/env bash

# https://github.com/dnschneid/crouton


# 1. download crouton: https://goo.gl/fd3zc
# 2. install chroot
sudo ~/Downloads/crouton -r trusty -t xfce,extension,keyboard   

# making chromebook media keys work.  in chrome-os:
# sudo sh -e ~/Downloads/crouton -t keyboard -u

# in chroot:
 su
cd /etc/defaults
sudo mv keyboard keyboard.orig
sudo sed s/pc105/chromebook/ <keyboard.orig >keyboard
