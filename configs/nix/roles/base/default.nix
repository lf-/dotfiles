{ config, pkgs, polkadots, ... }:
{
  nix.nixPath = [ "nixpkgs=${toString pkgs.path}" ];

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
  '';

  environment.variables = {
    EDITOR = "nvim";
  };

  nix.registry.nixpkgs.to = {
    type = "path";
    path = toString pkgs.path;
  };
}
