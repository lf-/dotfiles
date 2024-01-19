#!/usr/bin/env bash

nix run .#profile.switch
sudo nix run .#profile.pin
sudo nix run .#system-profile.switch -- --profile /nix/var/nix/profiles/default
