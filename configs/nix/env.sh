#!/usr/bin/env bash

nix run .#profile.switch
sudo nix run .#profile.pin
