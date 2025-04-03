{
  config,
  pkgs,
  lib,
  ...
}:
{
  boot.supportedFilesystems = [
    "ntfs"
    "ext4"
  ];

  services.fwupd.enable = true;

  environment.systemPackages =
    with pkgs;
    [
      nvme-cli
      smartmontools
      lm_sensors
      config.boot.kernelPackages.turbostat
    ]
    ++ lib.optionals (pkgs.stdenv.isLinux && pkgs.stdenv.isx86_64) [
      linuxPackages.x86_energy_perf_policy
    ];

  # Enable verbose logging
  systemd.services.power-profiles-daemon = {
    serviceConfig = {
      ExecStart = [
        ""
        "${config.services.power-profiles-daemon.package}/libexec/power-profiles-daemon -vv"
      ];
    };
  };
}
