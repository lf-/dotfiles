#!/bin/sh

# why the hell do we use legacy ssh:// to upload the paths to the remote host
# which causes absolutely horrible performance??
NIX_SSHOPTS="$NIX_SSHOPTS -l root" nixos-rebuild "$@" --build-host voracle --fast --target-host voracle --use-substitutes --flake .#voracle
