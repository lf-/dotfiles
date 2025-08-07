{ config, pkgs, ... }:
let sources = import ./nix/sources.nix;
in
{
  imports = [
    ../base
  ];

  boot.loader.systemd-boot.enable = true;
  boot.initrd.systemd.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  location = {
    provider = "geoclue2";
  };

  i18n.defaultLocale = "en_US.UTF-8";

  # security
  services.openssh = {
    enable = true;
    settings.PermitRootLogin = "prohibit-password";
    settings.PasswordAuthentication = false;
    extraConfig = ''
      AcceptEnv COLORTERM LC_*
    '';
  };
  security.sudo.wheelNeedsPassword = false;

  # packages
  environment.systemPackages = with pkgs; [
    pciutils
    usbutils
    psmisc
    glibcLocales
    nixos-option

    iotop

    stdenv

    # FIXME: probably should be in a diff file
    sshfs
  ];

  programs.git.enable = true;
  programs.zsh.enable = true;

  documentation.dev.enable = true;
  # simply do not need the nixos manual
  documentation.nixos.enable = false;

  # use nftables for firewall
  networking.nftables.enable = true;
}
