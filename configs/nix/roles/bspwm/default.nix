{ config, pkgs, ... }:
let
  dontAutostart = pkg: pkgs.runCommand pkg.name
    {
      nativeBuildInputs = [ pkgs.xorg.lndir ];
    } ''
    mkdir -p $out
    lndir ${pkg} $out
    rm -rf $out/etc/xdg/autostart
  '';
in
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

  # gbulb is bork
  # nixpkgs.overlays = [
  #   (import ../../overlays/aiopanel.nix { inherit (config.jade.dep-inject) aiobspwm aiopanel; })
  # ];

  services.resolved.enable = true;
  # services.connman = {
  #   enable = true;
  #   package = pkgs.connmanFull.override {
  #     # better behaved with respect to tailscale compared to internal caching
  #     # resolver
  #     dnsType = "systemd-resolved";
  #   };
  #   wifi.backend = "iwd";
  #   extraFlags = [ "--debug=plugins/iwd.c" ];
  #   # Connman allows changing system hostname by default via dhcp (no thanks)
  #   extraConfig = ''
  #     [General]
  #     AllowHostnameUpdates=false
  #   '';
  # };

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

  xdg.portal.enable = true;
  xdg.portal.extraPortals = [
    # pkgs.xdg-desktop-portal-kde
  ];

  environment.systemPackages = with pkgs; [
    feh
    sxhkd
    # FIXME: should be managed by the module instead
    xss-lock

    alacritty
    rofi

    # pkgs.aiopanel
    lemonbar-xft
    xtitle

    libsecret

    # seems to be kde5 lmao
    # blueberry
    # okular
    # dolphin
    # kdePackages.dolphin-plugins
    # kio-admin
    # kdePackages.kio-extras
    # ffmpegthumbs
    # ark
    # konsole
    # kdePackages.print-manager
    # systemsettings
    # gwenview
    # kdePackages.kdegraphics-thumbnailers

    # FIXME: maybe convert to the service module?
    (dontAutostart picom)

    xdo
    xdotool
    wmctrl

    maim
    rofimoji

    adwaita-icon-theme
    gnome-icon-theme
    catppuccin-gtk
    # breeze-icons
  ];
}
