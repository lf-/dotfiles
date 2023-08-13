#!/bin/sh

NIX_SSHOPTS="$NIX_SSHOPTS -l root" nixos-rebuild "$@" --fast --target-host voracle --use-substitutes --flake .#voracle
