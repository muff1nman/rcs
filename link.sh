#!/usr/bin/env bash
#
# link.sh
# Copyright (C) 2013 Andrew DeMaria (muff1nman) <ademaria@mines.edu>
#
# All Rights Reserved.
#

DEFAULT_LINK_SCRIPT="link.sh"

# for each directory, run dir/link.sh dir
for D in *; do
    if [ -d "${D}" ]; then
        echo "searching for links to setup inside ${D}"
				if [ -e "${D}/${DEFAULT_LINK_SCRIPT}" ]; then
					echo "found linking script inside ${D}"
					echo -n "Linking..."
					`${D}/${DEFAULT_LINK_SCRIPT} ${D}`
					if [[ "$?" == "0" ]]; then
						echo "Sucessful!"
					else
						echo "Failed..."
					fi
				fi
    fi
done

