# haskell language server
let
  sources = import ./nix/sources.nix;
  # hls = import sources.haskell-language-server;
  hls = import ~/dev/haskell-language-server;
  pkgs = import hls.inputs.nixpkgs {};
  inherit (pkgs.haskell.lib) appendConfigureFlag;
in appendConfigureFlag hls.defaultPackage."${pkgs.system}" "-frename"
