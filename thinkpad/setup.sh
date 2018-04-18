#!/bin/bash
# Setup script for ThinkPads

set -e

if [[ $EUID != 0 ]]; then
	echo 'Here: you lost this: sudo' >&2
	exit 1
fi

mkdir -p /etc/X11/xinitrc.d
cp xinitrc.d/* /etc/X11/xinitrc.d
cp tlp /etc/default
