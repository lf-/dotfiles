#!/bin/sh

NIX_SSHOPTS="$NIX_SSHOPTS -l root" nixos-rebuild "$@" --builders @/etc/nix/machines --fast --target-host voracle --use-substitutes --flake .#voracle
