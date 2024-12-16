#!/usr/bin/env bash
set -eu

profile_name=profile
if [[ "$0" == *env-managed.sh ]]; then
    profile_name=profile-managed
fi

if [[ $(id -u) == 0 ]]; then
    echo 'Do not run this as root' >&2
    exit 1
fi

nix run --keep-going -L ".#${profile_name}.switch"
sudo nix run ".#${profile_name}.pin"
sudo nix run .#system-profile.switch -- --profile /nix/var/nix/profiles/default

sys="$(uname -s)"
if [[ "${sys}" == Linux ]]; then
    sudo systemctl daemon-reload
    sudo systemctl restart nix-daemon
elif [[ "${sys}" == Darwin ]]; then
    sudo launchctl kickstart -k system/org.nixos.nix-daemon
fi
