#!/usr/bin/env bash
#
# link.sh
# Copyright (C) 2014 Andrew DeMaria (muff1nman) <ademaria@mines.edu>
#
# All Rights Reserved.
#


if [ -d "$1" ]; 
then
        dir=`readlink -f "$1"`
        if [ ! -d ~/.config/terminator ];
        then
                echo "Warning: creating terminator config directory.  Are you sure awesome is installed?"
                mkdir ~/.config/terminator
        fi
        ln -sf "$dir/config" ~/.config/terminator/config
else
        exit 1
fi

