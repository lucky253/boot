# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

for FILE in ~/boot/dotfiles/.bashrc.d/*
do
  source $FILE
done

