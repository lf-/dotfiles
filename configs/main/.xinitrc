#!/bin/sh

mkdir -p $HOME/.local/share/xorg
exec > $HOME/.local/share/xorg/xinit.log
exec 2>&1

xrdb_args="-I$HOME/.colors"
userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb $xrdb_args -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb $xrdb_args -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# environment
export XDG_CONFIG_HOME="$HOME/.config"

# UI stuff
setxkbmap -option compose:menu
setxkbmap -option caps:escape

# screensaver/locking bits
xset s 240 60
xss-lock -l -n dim-screen -- lock_screen &

# kill the touchpad that doesn't work properly anyway
xinput disable 'SynPS/2 Synaptics TouchPad'

if [[ -e ~/.calibration ]]; then
	source ~/.calibration
fi
feh --bg-scale ~/.dotfiles/wallpaper.png &
xsetroot -cursor_name left_ptr &
sxhkd &

if [ -z "$DBUS_SESSION_BUS_ADDRESS" ]; then
    # madness
    eval "$(dbus-launch --sh-syntax)"
fi

# workaround nixos issue: services.x11.displayManager.* does this but we don't
# use that stuff.
dbus-update-activation-environment DISPLAY XAUTHORITY WAYLAND_DISPLAY
systemctl --user import-environment DBUS_SESSION_BUS_ADDRESS XAUTHORITY DISPLAY XDG_SESSION_ID

exec bspwm
