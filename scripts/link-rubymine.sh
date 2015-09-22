#!/usr/bin/env bash

RUBYMINE="RubyMine70"

for DIR in codestyles colors keymaps options inspection quicklists tasks
do
    ORIG_DIR=~/.$RUBYMINE/config/$DIR
    BOOT_DIR=~/boot/dotfiles/.$RUBYMINE/config/$DIR

    if [ ! \( -L $ORIG_DIR \) ]; then
        if [ -d $ORIG_DIR ]; then
            echo "rm -rf $ORIG_DIR"
            rm -rf $ORIG_DIR
        fi
        echo "ln -sf $BOOT_DIR $ORIG_DIR"
        ln -sf $BOOT_DIR $ORIG_DIR
    fi
done

