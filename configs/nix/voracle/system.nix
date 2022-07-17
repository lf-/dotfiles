let
  sources = import ../nix/sources.nix;
  creds = import ../lib/creds.nix;
in
{ pkgs, lib, ... }:
{
  imports = [ ./hardware-configuration.nix ../roles/wireguard ];

  nixpkgs.system = "aarch64-linux";

  jade.wireguard = {
    enable = true;
    upstreamInterface = "enp0s3";
  };

  users.users = {
    jade = {
      isNormalUser = true;
      extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
      openssh.authorizedKeys.keys = creds.jade.sshKeys;
      shell = pkgs.zsh;
    };

    root = {
      openssh.authorizedKeys.keys = creds.jade.sshKeys;
    };

    hexchen = {
      isNormalUser = true;
      openssh.authorizedKeys.keys = creds.hexchen.sshKeys;
    };

    iris = {
      isNormalUser = true;
      openssh.authorizedKeys.keys = creds.iris.sshKeys;
    };
  };

  systemd.tmpfiles.rules = [
    "d /home/shared 0770 root users"
  ];

  i18n.defaultLocale = "en_US.UTF-8";

  services.openssh.enable = true;
  services.openssh.passwordAuthentication = false;
  networking.firewall.allowedTCPPorts = [ 80 443 ];

  security.sudo.wheelNeedsPassword = false;

  documentation.enable = true;

  nixpkgs.overlays = [
    (import ../overlays/polkadots.nix { inherit (sources) polkadots; })
  ];

  boot.loader.grub.configurationLimit = 1;

  environment.systemPackages =
    with (import ../packages.nix { inherit pkgs; });
    builtins.concatLists [ base dev ];
}
