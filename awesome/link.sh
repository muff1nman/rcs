#!/usr/bin/env bash
#
# link.sh
# Copyright (C) 2013 Andrew DeMaria (muff1nman) <ademaria@mines.edu>
#
# All Rights Reserved.
#

if [ -d "$1" ]; 
then
	dir=`readlink -f "$1"`
	if [ ! -d ~/.config/awesome ];
	then
		echo "Warning: creating awesome config directory.  Are you sure awesome is installed?"
		mkdir ~/.config/awesome
	fi
	ln -sf "$dir/rc.lua" ~/.config/awesome/rc.lua
else
	exit 1
fi

