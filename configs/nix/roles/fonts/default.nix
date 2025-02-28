{ config, pkgs, lib, ... }:
let iosevkaTerm = pkgs.iosevka-bin.override { variant = "SGr-IosevkaTerm"; };
in {
  fonts.packages = with pkgs; [
    source-code-pro
    iosevka-bin
    iosevkaTerm
    ubuntu_font_family
    source-han-sans
    source-sans
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-cjk-serif
    noto-fonts-emoji
    noto-fonts-extra
    liberation_ttf
    dejavu_fonts
    libertine
    open-sans
    roboto
    comic-neue
  ];
}
