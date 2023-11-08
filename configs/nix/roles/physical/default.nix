{ config, pkgs, ... }:
{
  boot.supportedFilesystems = [ "ntfs" ];

  services.fwupd.enable = true;

  environment.systemPackages = with pkgs; [
    nvme-cli
    smartmontools
  ];
}
