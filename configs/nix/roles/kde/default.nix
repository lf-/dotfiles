{ pkgs, lib, ... }:
{
  imports = [ ../graphical ];

  services.desktopManager.plasma6 = {
    enable = true;
  };
  # conflicts with programs.seahorse
  programs.ssh.askPassword = "${pkgs.kdePackages.ksshaskpass.out}/bin/ksshaskpass";

  environment.systemPackages = with pkgs.kdePackages; [
    kate
  ];
}
