{ config, pkgs, aiobspwm, aiopanel, ... }:
{
  imports = [ ../graphical ];
  services.xserver = {
    enable = true;
    windowManager.bspwm.enable = true;
    displayManager.startx.enable = true;

    libinput.enable = true;
  };

  services.upower.enable = true;

  nixpkgs.overlays = [ (import ../../overlays/aiopanel.nix { inherit aiobspwm aiopanel; }) ];

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
  ];
}
