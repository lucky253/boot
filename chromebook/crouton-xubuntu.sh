# https://github.com/dnschneid/crouton


# 1. download crouton: https://goo.gl/fd3zc
# 2. install chroot
sudo ~/Downloads/crouton -r trusty -t xfce,extension   

# 3. download Chrome 
sudo enter-chroot
sudo dpkg -i ~/Downloads/chrome....deb
sudo apt-get install -f




# KEYBINDINGS

# making chromebook media keys work
sudo sh -e ~/Downloads/crouton -t keyboard -u


### SESSION START

# general linux/X caps/ctrl swap
/usr/bin/setxkbmap -option "caps:swapescape"

