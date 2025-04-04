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
]
++ pkgs.lib.optionals pkgs.stdenv.isLinux (
  with pkgs;
  [
    linuxPackages.perf
  ]
)
