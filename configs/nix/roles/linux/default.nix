{ config, pkgs , ... }:
let sources = import ./nix/sources.nix;
in
{
  imports = [
    ../base
  ];

  time.timeZone = "America/Vancouver";
  i18n.defaultLocale = "en_US.UTF-8";

  # security
  services.openssh = {
    enable = true;
    permitRootLogin = "no";
    passwordAuthentication = false;
    extraConfig = ''
      AcceptEnv COLORTERM LC_*
    '';
  };
  security.sudo.extraRules = pkgs.lib.mkAfter [
    { groups = [ "wheel" ]; commands = [{ command = "ALL"; options = [ "NOPASSWD" ]; }]; }
  ];

  # packages
  environment.systemPackages = with pkgs; [
    pciutils
    usbutils
    psmisc
    glibcLocales
    nixos-option

    stdenv

    # FIXME: probably should be in a diff file
    sshfs
  ];

  programs.git.enable = true;
  programs.zsh.enable = true;

  documentation.dev.enable = true;
}
