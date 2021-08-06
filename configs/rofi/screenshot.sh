#!/bin/bash

set -e
#set -x

# This script is a custom modi for rofi to take screenshots with maim

region='ScreenShot Region'
window='ScreenShot Window'
desktop='ScreenShot Desktop'

function do_screenshot() {
		choice="$1"
		maim="/usr/bin/maim"
		echo $choice >&2

		if [[ "$choice" == "$region" ]]; then
				maim_args="-s"
		elif [[ "$choice" == "$window" ]]; then
				# really terrible hex to decimal
				# shouldn't be necessary but maim doesn't like hex even though it "supports" it
				winid="$(($(xwininfo | grep 'Window id' | awk '{ print $4 }')))"
				maim_args="-i ${winid}"
		else
				maim_args="-i root"
		fi
		# insecure, but I can't do a whole lot about it
		exec $maim $maim_args ~/.screenshots/$(date -Isec).png
}

if [[ -z $@ ]]; then
		echo -ne "${region}\n${window}\n${desktop}\n"
else
		coproc do_screenshot "$1"
fi
