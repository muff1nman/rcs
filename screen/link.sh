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
	ln -sf "$dir/screenrc" ~/.screenrc
else
	exit 1
fi



