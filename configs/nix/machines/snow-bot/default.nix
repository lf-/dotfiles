{ config, lib, nixpkgs, pkgs, ... }:
{
  imports = [
    ../../roles/dev
    #../../roles/hacking
    ../../roles/linux
    ../../roles/users
    ../../roles/kde
    #../../roles/bspwm
    ../../roles/rr
    ../../roles/tailscale
    ../../roles/cgroups
    #../../roles/rawethernet
    ../../roles/physical
    #../../roles/usbip
    #../../roles/secureboot
    ../../roles/autologin
    ../../roles/tpm
    #../../roles/networkmanager
    #../../roles/realtime
    ./hardware-configuration.nix
  ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "snow-bot";
  networking.hostId = "9bc56c3a";

  nix.settings.trusted-users = [ "@wheel" ];
  nix.settings.builders-use-substitutes = true;

  networking.firewall.allowedUDPPorts = [
    # evdevhook
    26760
    # openttd
    3979
    3978
  ];
  networking.firewall.allowedTCPPorts = [
    # openttd
    3979
  ];

  /*environment.systemPackages = with pkgs; [
    # i dont want literally any of the gpg stuff, just the agent
    config.programs.gnupg.agent.pinentryPackage
    prismlauncher
    openttd
    virt-manager

    # photography software not written by ridiculously toxic people
    digikam

    verible
    verilator
    imhex
    sysprof

    docker-compose

    iw
    powertop

    jetbrains.idea-community
    ios-webkit-debug-proxy
    libimobiledevice
    ifuse
    # kio-fuse

    ffmpeg

    # another rawtherapee
    art

    kiwix
    # filelight

    yt-dlp
  ]; */

  boot.initrd.systemd = {
    enable = true;
    emergencyAccess = "$2b$05$1wdLRpAwtirLmS3VniajbOF94vTJCkzbpp4bkQPPhSnUi7ynTJsAG";
  };

  jade.dev.withHsutils = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "25.05"; # Did you read the comment?
}
