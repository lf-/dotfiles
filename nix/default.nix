# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:
let sources = import ./nix/sources.nix;
in {
  imports =
    [ # Include the results of the hardware scan.
      /etc/nixos/hardware-configuration.nix
    ];

  boot.loader.systemd-boot.enable = true;

  networking.hostName = "nixos"; # Define your hostname.
  time.timeZone = "America/Vancouver";
  networking.useDHCP = false;
  networking.interfaces.enp1s0.useDHCP = true;

  documentation.dev.enable = true;

  i18n.defaultLocale = "en_US.UTF-8";

  nix.nixPath = [ "nixos-config=/home/jade/.dotfiles/nix" "nixpkgs=${sources.nixpkgs}" ];

  nixpkgs.overlays = [
    (import ./polkadots.nix { inherit (sources) polkadots; })
    (import ./patches.nix { })
  ];

  security.sudo.extraRules = pkgs.lib.mkAfter [
    { groups = [ "wheel" ]; commands = [ { command = "ALL"; options = [ "NOPASSWD" ]; } ]; }
  ];

  users.users.jade = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
  };

  environment.systemPackages = let
    base = with pkgs; [
      neovim
      git
      polkadots
      nodejs
    ];
    in
    builtins.concatLists [ base ];

  environment.variables = {
    EDITOR = "nvim";
  };

  services.openssh.enable = true;

  services.xserver.enable = true;
  services.xserver.desktopManager.plasma5.enable = true;
  services.xserver.displayManager.sddm.enable = true;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "20.09"; # Did you read the comment?

}


