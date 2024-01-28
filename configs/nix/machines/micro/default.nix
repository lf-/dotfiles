{ config, lib, pkgs, ... }: {
  imports = [
    ../../roles/linux
    ../../roles/users
    ../../roles/authoritative-dns
    ./hardware-configuration.nix
  ];

  virtualisation.vmVariant = {
    virtualisation.forwardPorts = [
      {
        from = "host";
        host.port = 2222;
        guest.port = 22;
      }
    ];
  };

  jade.authoritative-dns = {
    enable = true;
    acme-dns = {
      domain = "acme.lfcode.ca";
      external-ip = "50.116.18.138";
      email = "acmespam.lfcode.ca";
    };
  };
  environment.systemPackages = with pkgs; [
    dig
  ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "micro";

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "22.05"; # Did you read the comment?
}
