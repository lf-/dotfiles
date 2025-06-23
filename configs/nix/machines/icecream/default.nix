{
  config,
  lib,
  nixpkgs,
  pkgs,
  ...
}:
{
  imports = [
    ../../roles/dev
    ../../roles/networkmanager
    #../../roles/hacking
    ../../roles/linux
    ../../roles/users
    ../../roles/kde
    ../../roles/rr
    ../../roles/tailscale
    ../../roles/cgroups
    #../../roles/rawethernet
    ../../roles/physical
    #../../roles/usbip
    ../../roles/secureboot
    ../../roles/autologin
    #../../roles/tpm
    ../../modules/vtune.nix
    ../../roles/realtime
    ./hardware-configuration.nix
  ];

  jade.dev.withHsutils = false;
  jade.dev.withGui = false;

  programs.vtune.enable = true;

  boot.initrd.availableKernelModules = [
    "aesni_intel"
    "cryptd"
  ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot = {
    enable = true;
    edk2-uefi-shell.enable = true;
  };
  boot.loader.efi.canTouchEfiVariables = true;

  # for accelerated video decode. really this should be automatic.
  hardware.opengl.extraPackages = with pkgs; [ intel-media-driver ];

  # hm does this fix game gremlins? https://gitlab.freedesktop.org/drm/amd/-/issues/2516
  boot.kernelParams = [ "gpu_sched.sched_policy=0" ];

  programs.steam = {
    enable = true;
    gamescopeSession = {
      enable = true;
    };
  };

  services.udev.extraRules = ''
    # logic analyzer
    ATTRS{idVendor} == "0925", ATTRS{idProduct} == "3881", TAG += "uaccess"

    # fpga
    ACTION=="add", SUBSYSTEM=="usb", ATTRS{idVendor}=="09fb", TAG+="uaccess", SYMLINK+="usbblaster"

    # nvidia
    # ATTR{device}=="0x249d", ATTR{vendor}=="0x10de", ATTR{power/control} := "auto"
  '';

  boot.blacklistedKernelModules = [ "nouveau" ];

  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.nvidia = {
    powerManagement = {
      enable = true;
      finegrained = true;
    };
    dynamicBoost.enable = true;
    modesetting.enable = true;
    open = true;

    prime = {
      nvidiaBusId = "PCI:1:0:0";
      intelBusId = "PCI:0:2:0";
      offload.enable = true;
      offload.enableOffloadCmd = true;
    };

    nvidiaSettings = true;
  };

  specialisation.nvidia-proprietary.configuration = {
    hardware.nvidia.open = lib.mkForce false;
  };

  programs.gamescope = {
    enable = true;
    capSysNice = true;

    env = {
      __NV_PRIME_RENDER_OFFLOAD = "1";
      __VK_LAYER_NV_optimus = "NVIDIA_only";
      __GLX_VENDOR_LIBRARY_NAME = "nvidia";
    };
  };

  networking.hostName = "icecream";

  # virtualisation.libvirtd = {
  #   enable = true;
  # };

  nix.settings.trusted-users = [ "@wheel" ];
  nix.settings.builders-use-substitutes = true;

  # users.users.jade.extraGroups = [ "docker" ];
  # # eugh
  # virtualisation.docker = {
  #   enable = true;

  #   storageDriver = "btrfs";
  # };

  environment.systemPackages = with pkgs; [
    # i dont want literally any of the gpg stuff, just the agent
    config.programs.gnupg.agent.pinentryPackage
    iw
    powertop

    libimobiledevice
    # ifuse
    # kio-fuse
  ];

  networking.hostId = "329c19ab";

  # fixme: this is in closure from somewhere else and must be removed
  # nixpkgs.overlays = [ (import ../../overlays/kio-extras.nix) ];

  # Apple stuff
  services.usbmuxd.enable = true;

  # I don't really like this but I am not exactly sure why.
  # Maybe it enables on users I don't like it to?
  services.yubikey-agent.enable = true;

  virtualisation.podman = {
    enable = true;
  };

  services.hardware.openrgb.enable = true;

  boot.initrd.systemd = {
    enable = true;
    emergencyAccess = "$2b$05$1wdLRpAwtirLmS3VniajbOF94vTJCkzbpp4bkQPPhSnUi7ynTJsAG";
  };

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.05"; # Did you read the comment?
}
