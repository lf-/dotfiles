{ config, pkgs, polkadots, ... }:
{
  nix.nixPath = [ "nixpkgs=${pkgs.path}" ];

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
    (import ../../overlays/polkadots.nix { inherit polkadots; })
  ];
  nixpkgs.config.allowUnfree = true;

  nix.extraOptions = ''
    experimental-features = nix-command flakes
  '';

  environment.variables = {
    EDITOR = "nvim";
  };
  #
  # nix.registry.nixpkgs.flake = pkgs.path;
}
