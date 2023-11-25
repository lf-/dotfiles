{ config, pkgs, ... }:
{
  boot.supportedFilesystems = [ "ntfs" "ext4" ];

  services.fwupd.enable = true;

  environment.systemPackages = with pkgs; [
    nvme-cli
    smartmontools
    lm_sensors
    config.boot.kernelPackages.turbostat
  ];
}
