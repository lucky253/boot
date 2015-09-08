# https://github.com/dnschneid/crouton

# download: https://goo.gl/fd3zc

# chroot install
sudo ~/Downloads/crouton -r trusty -t xfce,extension

# keybindings

# making chromebook media keys work
sudo sh -e ~/Downloads/crouton -t keyboard -u


### SESSION START

# general linux/X caps/ctrl swap
/usr/bin/setxkbmap -option "caps:swapescape"

