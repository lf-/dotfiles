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

  nixpkgs.overlays = [ (import ../../overlays/aiopanel.nix { inherit aiobspwm aiopanel; }) ];

  services.connman = {
    enable = true;
    package = pkgs.connmanFull;
    wifi.backend = "iwd";
  };

  hardware.acpilight.enable = true;

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

    # FIXME: maybe convert to the service module?
    picom

    okular

    xdo
    xdotool
    wmctrl

    catppuccin-gtk
  ];
}
