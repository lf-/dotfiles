{ config, pkgs, lib, ... }:
{
  imports = [ ../fonts ../avahi ];
  environment.systemPackages = with pkgs; [
    firefox-wayland
    chromium
    alacritty
    glxinfo
    yubikey-manager-qt
    xsel
    xclip
    wl-clipboard
    zoom-us
    xdg-utils
    obs-studio
    kdenlive
    spotify
    libreoffice
    arandr
    gimp
    inkscape
    zeal
    signal-desktop
    zotero
    element-desktop

    alsa-utils

    kooha
    # FIXME: kooha doesn't work on my bspwm machine
    peek

    pdfarranger
    pdfgrep
    # FIXME: jpdftweak
    qpdf

    vlc
    mpv

    meld

    d-spy

    vscode

    prusa-slicer

    pulseaudio
    pavucontrol

    audacity
  ];

  nixpkgs.config.firefox.speechSynthesisSupport = true;
  services.printing.enable = true;
  services.printing.drivers = with pkgs; [ hplip ];
  services.avahi.enable = true;

  services.udisks2.enable = true;

  programs.kdeconnect.enable = true;

  # deal with the dbus systemd interaction bug where it will not fail things if
  # they fail in systemd
  services.dbus.implementation = "broker";

  # gitk
  programs.git.package = pkgs.gitFull;

  hardware.pulseaudio.enable = lib.mkForce false;

  services.pipewire = {
    enable = true;
    audio.enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };
  security.rtkit.enable = true;

  programs.dconf.enable = true;
  hardware.bluetooth.enable = true;
  hardware.acpilight.enable = true;

  boot.extraModulePackages = [ config.boot.kernelPackages.v4l2loopback ];
  boot.kernelModules = [ "v4l2loopback" ];
}
