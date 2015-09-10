# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

for FILE in ~/boot/dotfiles/bash_rc.d/*
do
  source $FILE
done


export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
