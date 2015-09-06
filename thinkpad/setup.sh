#!/bin/bash
# Setup script for ThinkPads

if [[ $EUID != 0 ]]; then
	echo 'Here: you lost this: sudo' >&2
	exit 1
fi

cp xinitrc.d/* /etc/X11/xinitrc.d
cp tlp /etc/default
