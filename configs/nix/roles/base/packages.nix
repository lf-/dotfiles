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
  tree-sitter
  htop
]
++ pkgs.lib.optionals pkgs.stdenv.isLinux (
  with pkgs;
  [
    linuxPackages.perf
  ]
)
