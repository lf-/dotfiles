{ config, lib, nixpkgs, pkgs, ... }:
{
  imports = [
    ../../roles/dev
    ../../roles/hacking
    ../../roles/linux
    ../../roles/users
    ../../roles/bspwm
    ../../roles/rr
    ../../roles/tailscale
    ../../roles/cgroups
    ../../roles/rawethernet
    ../../roles/physical
    ../../roles/usbip
    ./hardware-configuration.nix
  ];

  boot.initrd.availableKernelModules = [ "aesni_intel" "cryptd" ];
  # create a swap file on the encrypted partition
  #swapDevices = [{ device = "/swap/swapfile"; size = 32768; }];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "snowflake";

  virtualisation.libvirtd = {
    enable = true;
  };

  nix.buildMachines = [{
    systems = [ "x86_64-linux" "x86_64-v1-linux" "x86_64-v2-linux" "x86_64-v3-linux" ];
    sshUser = "nix-remote-build";
    sshKey = "/root/.ssh/id_rsa";
    protocol = "ssh-ng";
    maxJobs = 24;
    supportedFeatures = [ "kvm" "big-parallel" ];
    hostName = "tail-bot.hyrax-grouse.ts.net";
  }];
  # nix.distributedBuilds = true;
  nix.settings.trusted-users = [ "@wheel" ];
  nix.settings.builders-use-substitutes = true;

  networking.firewall.allowedUDPPorts = [
    # evdevhook
    26760
  ];

  programs.steam.enable = true;

  environment.systemPackages = with pkgs; [
    prismlauncher
    virt-manager

    verible
    verilator
    imhex
    # tcpdump
    # iotop
  ];

  boot.initrd.systemd = {
    enable = true;
  };

  services.udev.extraRules = ''
    # logic analyzer
    ATTRS{idVendor} == "0925", ATTRS{idProduct} == "3881", TAG += "uaccess"

    # fpga
    ACTION=="add", SUBSYSTEM=="usb", ATTRS{idVendor}=="09fb", TAG+="uaccess", SYMLINK+="usbblaster"
  '';

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "22.05"; # Did you read the comment?
}
