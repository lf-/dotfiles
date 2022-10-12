let
  sources = import ../nix/sources.nix;
  creds = import ../lib/creds.nix;
in
{ pkgs, lib, ... }:
{
  imports = [ ./hardware-configuration.nix ../roles/wireguard ];

  nixpkgs.system = "aarch64-linux";

  # jade.wireguard = {
  #   enable = true;
  #   upstreamInterface = "enp0s3";
  # };

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

  services.openssh.enable = true;
  services.openssh.passwordAuthentication = false;
  networking.firewall.allowedTCPPorts = [ 80 443 ];

  security.sudo.wheelNeedsPassword = false;

  documentation.enable = true;

  nix.extraOptions = ''
    experimental-features = nix-command flakes
  '';

  nixpkgs.overlays = [
    (import ../overlays/polkadots.nix { inherit (sources) polkadots; })
  ];

  boot.loader.grub.configurationLimit = 1;

  environment.systemPackages =
    with (import ../packages.nix { inherit pkgs; });
    builtins.concatLists [ base dev ];
}
