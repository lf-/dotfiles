{ pkgs }:
with pkgs;
[
  file
  neovim
  pkgs.polkadots
  nodejs
  rustup
  zsh
  tree
  htop
  linuxPackages.perf
]
