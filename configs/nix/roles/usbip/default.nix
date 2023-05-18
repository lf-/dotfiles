{ pkgs, lib, ... }:
{
  environment.systemPackages = [
    pkgs.linuxPackages.usbip
  ];

  networking.firewall.allowedTCPPorts = [
    3240
  ];
}
