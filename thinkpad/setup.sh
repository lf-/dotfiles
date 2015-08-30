#!/bin/bash
# Setup script for ThinkPads

if [[ $EUID != 0 ]]; then
	echo 'Here: you lost this: sudo' >&2
	exit 1
fi

cp units/* /etc/systemd/system
cp bin/* /usr/local/bin
cp xinitrc.d/* /etc/X11/xinitrc.d
