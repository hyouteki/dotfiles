#!/bin/bash

# I know I can use GNU stow but fuck it we ball

if [ -z $ROOT ]; then
    ROOT=$(pwd)
    echo "ROOT not set, defaulting to: ${ROOT}"
fi

ln -s -f $ROOT/i3/config                          ~/.config/i3/config
ln -s -f $ROOT/i3status/config                    ~/.config/i3status/config
ln -s -f $ROOT/gestures/libinput-gestures.conf    ~/.config/libinput-gestures.conf
ln -s -f $ROOT/fish/config.fish                   ~/.config/fish/config.fish
ln -s -f $ROOT/tmux/config                        ~/.tmux.conf
ln -s -f $ROOT/emacs/init.el                      ~/.emacs
# NOTE: symlink does not work here for some reason
ln    -f $ROOT/emacs/custom.el                    ~/.emacs.custom.el
