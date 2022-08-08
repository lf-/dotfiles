{ config, pkgs, lib, ... }:
{
  imports = [ ../fonts ];
  environment.systemPackages = with pkgs; [
    firefox-wayland
    chromium
    alacritty
    glxinfo
    yubikey-manager-qt
    xsel
    wl-clipboard
    zoom-us
    xdg-utils
    obs-studio
    kdenlive
    spotify
    libreoffice
    arandr
    gimp
    zeal

    vscode

    pulseaudio
    pavucontrol

    audacity
  ];

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

  boot.extraModulePackages = [ config.boot.kernelPackages.v4l2loopback ];
  boot.kernelModules = [ "v4l2loopback" ];
}
