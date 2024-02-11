let
  creds = import ../../lib/creds.nix;
in
{ pkgs, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ../../roles/base
    ../../roles/linux
    ../../roles/atuin
    ../../roles/tailscale
    ../../roles/webdav
    ../../roles/wireguard
    ../../roles/users
  ];

  boot.supportedFilesystems = [ "zfs" ];
  networking.hostId = "4b247ece";
  boot.zfs.extraPools = [ "zdata" ];

  nixpkgs.system = "aarch64-linux";

  jade.wireguard = {
    enable = true;
    upstreamInterface = "enp0s6";
  };

  jade.rootSshKeys.enable = true;

  users.users = {
    hexchen = {
      isNormalUser = true;
      openssh.authorizedKeys.keys = creds.hexchen.sshKeys;
    };

    lunaphied = {
      description = "Lunaphied";
      isNormalUser = true;
      openssh.authorizedKeys.keys = creds.lunaphied.sshKeys;
    };
  };

  systemd.tmpfiles.rules = [
    "d /home/shared 0770 root users"
  ];

  i18n.defaultLocale = "en_US.UTF-8";

  networking.firewall.allowedTCPPorts = [ 80 443 ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.systemd-boot.configurationLimit = 2;

  networking.hostName = "voracle";

  environment.systemPackages =
    with (import ../../packages.nix { inherit pkgs; });
    builtins.concatLists [ base dev ];

  # allow nat from tailscale
  networking.nat.internalInterfaces = [ "tailscale0" ];

  system.stateVersion = "22.11";
}
