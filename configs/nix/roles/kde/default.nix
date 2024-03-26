{ pkgs, lib, ... }:
{
  services.xserver.desktopManager.plasma5 = {
    enable = true;
  };
  # conflicts with programs.seahorse
  programs.ssh.askPassword = "${pkgs.libsForQt5.plasma5.ksshaskpass.out}/bin/ksshaskpass";

  environment.systemPackages = with pkgs.libsForQt5; [
    kate
  ];
}
