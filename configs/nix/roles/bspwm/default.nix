{ config, pkgs, aiobspwm, aiopanel, ... }:
{
  imports = [ ../graphical ];
  services.xserver = {
    enable = true;
    windowManager.bspwm.enable = true;
    displayManager.startx.enable = true;

    libinput.enable = true;
    libinput.touchpad.disableWhileTyping = true;
  };

  services.upower.enable = true;
  services.redshift = {
    enable = true;
  };

  nixpkgs.overlays = [
    (import ../../overlays/aiopanel.nix { inherit aiobspwm aiopanel; })
    (import ../../overlays/connman.nix { })
  ];

  services.connman = {
    enable = true;
    package = pkgs.connmanFull;
    wifi.backend = "iwd";
    extraFlags = [ "--debug=plugins/iwd.c" ];
    # Connman allows changing system hostname by default via dhcp (no thanks)
    extraConfig = ''
      [General]
      AllowHostnameUpdates=false
    '';
  };

  # gnome-keyring is the more standard of the options
  services.gnome = {
    gnome-keyring.enable = true;
    at-spi2-core.enable = true;
  };
  programs.seahorse.enable = true;
  programs.dconf.enable = true;

  hardware.bluetooth.enable = true;

  hardware.acpilight.enable = true;

  # i was rr'ing a program and it froze x so hard you couldn't change vty
  services.xserver.enableCtrlAltBackspace = true;

  environment.systemPackages = with pkgs; [
    feh
    sxhkd
    # FIXME: should be managed by the module instead
    xss-lock

    alacritty
    rofi

    pkgs.aiopanel
    lemonbar-xft
    xtitle

    libsecret

    blueberry
    okular

    # FIXME: maybe convert to the service module?
    picom

    xdo
    xdotool
    wmctrl

    maim
    rofimoji

    catppuccin-gtk
  ];
}
