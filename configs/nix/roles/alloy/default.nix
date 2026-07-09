{ lib, config, ... }:
let
  cfg = config.jade.alloy;
in
{
  options.jade.alloy = {
    enable = lib.mkEnableOption "grafana alloy";

    environmentFile = lib.mkOption {
      type = lib.types.path;
      description = "Path to the environment file";
    };

    zfs.enable = lib.mkEnableOption "zfs monitoring";

    configFile = lib.mkOption {
      type = lib.types.path;
    };
  };

  config = lib.mkIf cfg.enable {
    environment.etc."alloy/config.alloy" = {
      source = cfg.configFile;
    };

    services.alloy = {
      enable = true;
      environmentFile = cfg.environmentFile;
    };

    services.prometheus.exporters = {
      zfs = lib.mkIf cfg.zfs.enable {
        enable = true;
      };
    };
  };
}
