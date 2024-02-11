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

    Lunaphied = {
      isNormalUser = true;
      openssh.authorizedKeys.keys = creds.Lunaphied.sshKeys;
    };

    alexis = {
      isNormalUser = true;
      openssh.authorizedKeys.keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINvdk6lW8N+r56OAG4ZUh0KDeVZTLFdnpNJNkkm6TAkH"
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOTZqEu22rrazapG4h1Bd6OjoBhyie45f+SFtDoscR/V"
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPoVsYDfuwggQ2VL4jokep5ysFDbDXH+Pvcdl6MYhfLz"
      ];
    };
  };

  systemd.tmpfiles.rules = [
    "d /home/shared 0770 root users"
  ];

  i18n.defaultLocale = "en_US.UTF-8";

  networking.firewall.allowedTCPPorts = [ 80 443 ];

  boot.loader.grub.configurationLimit = 2;

  networking.hostName = "voracle";

  environment.systemPackages =
    with (import ../../packages.nix { inherit pkgs; });
    builtins.concatLists [ base dev ];

  # allow nat from tailscale
  networking.nat.internalInterfaces = [ "tailscale0" ];

  system.stateVersion = "22.11";
}
