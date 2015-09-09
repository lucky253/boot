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

# WEB: Download chrome
sudo dpkg -i ~/Downloads/chrome-xxx.deb
sudo apt-get install -f

google-chrome-stable
# WEB: log into chrome 

# generate new ssh key
ssh-keygen

# WEB: install new ssh key in
git clone git@github.com:leword/boot.git

# setup dotfile symlinks
ln -s ~/.gconf ~/boot/dotfiles/.gconf
ln -s ~/.bashrc ~/boot/dotfiles/.bashrc
ls -s ~/.config/xfce4 ~/boot/dotfiles/.config/xfce4
ls -s ~/.config/xfce4-session ~/boot/dotfiles/.config/xfce4-session
