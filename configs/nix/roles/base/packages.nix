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
++ pkgs.lib.optionals pkgs.stdenv.hostPlatform.isLinux (
  with pkgs;
  [
    linuxPackages.perf
  ]
)
