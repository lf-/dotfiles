{ config, pkgs, polkadots, ... }:
{
  environment.etc."nix/inputs/nixpkgs" = {
    source = config.jade.dep-inject.nixpkgs.outPath;
  };
  nix.nixPath = [ "nixpkgs=/etc/nix/inputs/nixpkgs" ];

  environment.systemPackages = with pkgs; [
    file
    neovim
    pkgs.polkadots
    nodejs
    rustup
    zsh
    tree
    htop
  ];

  nixpkgs.overlays = [
    (import ../../overlays/polkadots.nix { polkadots = config.jade.dep-inject.polkadots; })
  ];
  nixpkgs.config.allowUnfree = true;

  nix.extraOptions = ''
    experimental-features = nix-command flakes
    flake-registry =
  '';

  environment.variables = {
    EDITOR = "nvim";
  };

  nix.registry.nixpkgs.to = {
    type = "path";
    path = config.jade.dep-inject.nixpkgs;
  };
}
