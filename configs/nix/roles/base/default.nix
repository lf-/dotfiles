{ config, pkgs, ... }:
{
  nixpkgs.flake.source = config.jade.dep-inject.nixpkgs.outPath;
  nix.channel.enable = false;

  environment.systemPackages = import ./packages.nix { inherit pkgs; };

  nixpkgs.overlays = [
    (import ../../overlays/polkadots.nix { polkadots = config.jade.dep-inject.polkadots; })
    (import ../../overlays/vendor-pkgs.nix)
  ];
  nixpkgs.config.allowUnfree = true;

  nix.settings = {
    experimental-features = "nix-command flakes";
    flake-registry = "";
  };

  environment.variables = {
    EDITOR = "nvim";
  };
}
