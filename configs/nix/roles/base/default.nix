{ config, pkgs, ... }:
let sources = import ./nix/sources.nix;
in
{
  nix.nixPath = [ "nixpkgs=${sources.nixpkgs}" ];

  environment.systemPackages = with pkgs; [
    file
    neovim
    polkadots
    nodejs
    rustup
    zsh
    tree
    htop
  ];

  nixpkgs.overlays = [
    (import ../../overlays/polkadots.nix { inherit (sources) polkadots; })
  ];
  nixpkgs.config.allowUnfree = true;

  nix.extraOptions = ''
    experimental-features = nix-command flakes
  '';

  environment.variables = {
    EDITOR = "nvim";
  };

  nix.registry.nixpkgs.flake = sources.nixpkgs;
}
