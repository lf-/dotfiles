#!/usr/bin/env bash
set -eu

nix run -L .#profile.switch
sudo nix run .#profile.pin
sudo nix run .#system-profile.switch -- --profile /nix/var/nix/profiles/default
