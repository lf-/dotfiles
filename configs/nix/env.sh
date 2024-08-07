#!/usr/bin/env bash
set -eu

if [[ $(id -u) == 0 ]]; then
    echo 'Do not run this as root' >&2
    exit 1
fi

nix run --keep-going -L .#profile.switch
sudo nix run .#profile.pin
sudo nix run .#system-profile.switch -- --profile /nix/var/nix/profiles/default

sudo systemctl daemon-reload
sudo systemctl restart nix-daemon
