#!/bin/sh

NIX_SSHOPTS="$NIX_SSHOPTS -l root" nixos-rebuild "$@" --fast --target-host voracle --flake .#voracle
