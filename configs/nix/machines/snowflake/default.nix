{ config, lib, nixpkgs, pkgs, ... }:
{
  imports = [
    ../../roles/dev
    ../../roles/hacking
    ../../roles/linux
    ../../roles/users
    ../../roles/kde
    ../../roles/bspwm
    ../../roles/rr
    ../../roles/tailscale
    ../../roles/cgroups
    ../../roles/rawethernet
    ../../roles/physical
    ../../roles/usbip
    ../../roles/secureboot
    ../../roles/autologin
    ../../roles/tpm
    ../../roles/networkmanager
    ../../roles/realtime
    ./hardware-configuration.nix
  ];

  boot.initrd.availableKernelModules = [ "aesni_intel" "cryptd" ];

  # boot.kernelPackages = pkgs.linuxPackages.extend (self: super: {
  #   kernel = super.kernel.override (old: {
  #     kernelPatches = old.kernelPatches ++ [
  #       {
  #         name = "acpi_nonsense";
  #         patch = null;
  #         extraStructuredConfig = with lib.kernel; {
  #           ACPI_DEBUGGER = yes;
  #           ACPI_DEBUGGER_USER = module;
  #           DEVMEM = yes;
  #           STRICT_DEVMEM = no;
  #           IO_STRICT_DEVMEM = option no;
  #         };
  #       }
  #     ];
  #   });
  # });

  # boot.kernelPackages = pkgs.linuxPackages_latest;

  # create a swap file on a subvol on the encrypted partition
  # swapDevices = [{ device = "/swap/swapfile"; size = 32768; }];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # this smells like bullshit because I am pretty sure it has to run on resume
  # from sleep as well.
  #
  # also, is bbswitch obsolete?
  # hardware.nvidiaOptimus.disable = true;

  # for accelerated video decode. really this should be automatic.
  hardware.opengl.extraPackages = with pkgs; [ intel-media-driver ];

  jade.rawethernet = {
    enable = false;
    interfaceName = "enp62s0u1u3";
  };

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
    # openttd
    3979
    3978
  ];
  networking.firewall.allowedTCPPorts = [
    # openttd
    3979
  ];

  programs.steam.enable = true;

  users.users.jade.extraGroups = [ "docker" ];
  # eugh
  virtualisation.docker = {
    enable = true;

    storageDriver = "btrfs";
  };

  environment.systemPackages = with pkgs; [
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

    yt-dlp
  ];

  # fixme: this is in closure from somewhere else and must be removed
  # nixpkgs.overlays = [ (import ../../overlays/kio-extras.nix) ];

  # Apple stuff
  services.usbmuxd.enable = true;

  # I don't really like this but I am not exactly sure why.
  # Maybe it enables on users I don't like it to?
  services.yubikey-agent.enable = true;

  boot.initrd.systemd = {
    enable = true;
    emergencyAccess = "$2b$05$1wdLRpAwtirLmS3VniajbOF94vTJCkzbpp4bkQPPhSnUi7ynTJsAG";
  };

  services.udev.extraRules = ''
    # logic analyzer
    ATTRS{idVendor} == "0925", ATTRS{idProduct} == "3881", TAG += "uaccess"

    # fpga
    ACTION=="add", SUBSYSTEM=="usb", ATTRS{idVendor}=="09fb", TAG+="uaccess", SYMLINK+="usbblaster"
  '';

  # workaround broken DNS for the captive portal at VPL
  networking.extraHosts = ''
    10.254.98.1 captiveportal-login.vpl.ca
  '';

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "22.05"; # Did you read the comment?
}
