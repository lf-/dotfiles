#!/usr/bin/env bash
set -eu

nix run --keep-going -L .#profile.switch
sudo nix run .#profile.pin
sudo nix run .#system-profile.switch -- --profile /nix/var/nix/profiles/default

sudo systemctl daemon-reload
sudo systemctl restart nix-daemon
