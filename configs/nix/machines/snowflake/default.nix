{ config, lib, nixpkgs, pkgs, ... }: {
  imports = [
    ../../roles/dev
    ../../roles/linux
    ../../roles/users
    ../../roles/bspwm
    ../../roles/rr
    ../../roles/tailscale
    ../../roles/cgroups
    ./hardware-configuration.nix
  ];

  boot.initrd.availableKernelModules = [ "aesni_intel" "cryptd" ];
  # create a swap file on the encrypted partition
  #swapDevices = [{ device = "/swap/swapfile"; size = 32768; }];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  time.timeZone = "America/Montreal";

  networking.hostName = "snowflake";

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

  environment.systemPackages = with pkgs; [
    prismlauncher
  ];

  boot.initrd.systemd = {
    enable = true;
  };

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "22.05"; # Did you read the comment?
}
