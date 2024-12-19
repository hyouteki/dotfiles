#!/bin/bash

# I know I can use GNU stow but fuck it we ball
# TODO: replace duplicating files with symlinks

if [ -z "${ROOT}" ]; then
    ROOT="."
    echo "ROOT not set, defaulting to: ${ROOT}"
fi

cp ${ROOT}/i3/config ~/.config/i3/config 
cp ${ROOT}/i3status/config ~/.config/i3status/config
cp ${ROOT}/gestures/libinput-gestures.conf ~/.config/libinput-gestures.conf
cp ${ROOT}/.tmux.conf ~/.tmux.conf
cp ${ROOT}/.emacs ~/.emacs
cp ${ROOT}/.emacs.custom.el ~/.emacs.custom.el
