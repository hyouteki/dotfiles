#!/bin/bash

if [ -z $ROOT ]; then
    ROOT=$(pwd)
    echo "ROOT not set, defaulting to: ${ROOT}"
fi

cp ~/.emacs.custom.el $ROOT/emacs/custom.el
