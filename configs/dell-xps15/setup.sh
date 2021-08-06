#!/bin/bash
# Setup script for the Dell XPS 15

if [[ $EUID != 0 ]]; then
	echo 'Here: you lost this: sudo' >&2
	exit 1
fi

mkdir -p /etc/X11/xinit/xinitrc.d/
cp xinitrc.d/* /etc/X11/xinit/xinitrc.d/
chmod +x /etc/X11/xinit/xinitrc.d/*
