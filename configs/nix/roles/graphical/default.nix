{
  config,
  pkgs,
  lib,
  ...
}:
let
  cfg = config.jade.graphical;
in
{
  imports = [
    ../fonts
    ../avahi
  ];

  options.jade.graphical = {
    minimal = lib.mkOption {
      description = "Minimal setup, few programs installed. Intended for when you need a GUI for strange compliance purposes.";
      type = lib.types.bool;
      default = false;
    };
  };

  config = lib.mkMerge [
    (lib.mkIf (!cfg.minimal) {
      boot.supportedFilesystems = [ "cifs" ];

      environment.systemPackages = with pkgs; [
        zoom-us

        # editors
        # kdePackages.kdenlive
        spotify
        libreoffice
        gimp
        (inkscape-with-extensions.override {
          inkscapeExtensions = with pkgs.inkscape-extensions; [
            inkstitch
          ];
        })
        audacity

        # document shuffling
        zeal
        zotero

        # communication
        signal-desktop
        element-desktop

        # screen recording
        kooha
        # FIXME: kooha doesn't work on my bspwm machine
        peek
        obs-studio

        # pdfs
        pdfarranger
        pdfgrep
        # FIXME: jpdftweak
        qpdf

        # video viewers
        vlc
        mpv

        # dev tools
        meld
        d-spy
        vscode

        # threedy printers
        prusa-slicer
      ];

      nixpkgs.config.firefox.speechSynthesisSupport = true;
      services.printing.enable = true;
      services.printing.drivers = with pkgs; [ hplip ];
      services.avahi.enable = true;

      programs.kdeconnect.enable = true;

      # gitk
      programs.git.package = pkgs.gitFull;

      boot.extraModulePackages = [ config.boot.kernelPackages.v4l2loopback ];
      boot.kernelModules = [ "v4l2loopback" ];
    })
    {
      environment.systemPackages = with pkgs; [
        firefox-wayland
        chromium
        alacritty
        glxinfo
        xsel
        xclip
        wl-clipboard
        xdg-utils
        arandr

        alsa-utils
        qpwgraph

        pulseaudio
        pavucontrol
      ];

      users.users.jade.extraGroups = [ "rtkit" ];

      services.udisks2.enable = true;

      # deal with the dbus systemd interaction bug where it will not fail things if
      # they fail in systemd
      services.dbus.implementation = "broker";

      services.pulseaudio.enable = lib.mkForce false;

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
    }
  ];
}
