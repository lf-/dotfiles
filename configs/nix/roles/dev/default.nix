{ pkgs, config, lib, ... }:
let
  hsutilsOverlay = import ../../../../programs/hsutils/overlay.nix { ghcVer = "ghc96"; };

  common-dev-pkgs = import ./common-packages.nix { inherit pkgs; inherit (cfg) withHsutils withGui; inherit (config.jade.dep-inject) qyriad-nur; };
  nix-system-packages = import ./nix-system-packages.nix { inherit pkgs; nixos = true; };

  cfg = config.jade.dev;
  inherit (lib) mkOption;
in
{
  imports = [ ../debug ];
  options = {
    jade.dev.withHsutils = mkOption {
      default = true;
      type = lib.types.bool;
      description = ''Include hsutils (mildly expensive to build) in the closure'';
    };
    jade.dev.withGui = mkOption {
      default = true;
      type = lib.types.bool;
      description = ''Include gui stuff in the closure'';
    };
  };

  config = {
    environment.systemPackages = common-dev-pkgs ++ nix-system-packages;

    nixpkgs.overlays = [
      hsutilsOverlay
      (import ../../overlays/gitignore.nix { inherit (config.jade.dep-inject) gitignore; })
      (import ../../overlays/jadeware.nix)
    ];

    nix.settings = {
      # nix-direnv
      keep-outputs = true;
      keep-derivations = true;
    };

    nix.settings.trusted-substituters = [
      "https://haskell-language-server.cachix.org"
    ];

    environment.pathsToLink = [
      "/share/nix-direnv"
    ];
  };
}
