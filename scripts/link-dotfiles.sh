#!/usr/bin/env bash

RUBYMINE="RubyMine70"

function link_dir {
    BOOT_DIR=$1
    ORIG_DIR=$2

    if [ ! \( -L $ORIG_DIR \) ]; then
        if [ -d $ORIG_DIR ]; then
            echo "rm -rf $ORIG_DIR"
            rm -rf $ORIG_DIR
        fi
        echo "ln -sf $BOOT_DIR $ORIG_DIR"
        ln -sf $BOOT_DIR $ORIG_DIR
    fi
}

for DIR in codestyles colors keymaps options inspection quicklists tasks
do
    ORIG_DIR=~/.$RUBYMINE/config/$DIR
    BOOT_DIR=~/boot/dotfiles/.$RUBYMINE/config/$DIR
    link_dir $BOOT_DIR $ORIG_DIR
done

link_dir ~/boot/dotfiles/.$RUBYMINE/glassfrogRunConfigurations ~/workspace/glassfrog/.idea/runConfigurations

# do autokey while we're at it
for DIR in data
do
	ORIG_DIR=~/.config/autokey/$DIR
	BOOT_DIR=~/boot/dotfiles/.config/autokey/$DIR
	link_dir $BOOT_DIR $ORIG_DIR
done


