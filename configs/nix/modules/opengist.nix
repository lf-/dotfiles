{ pkgs, config, lib, ... }:
let
  inherit (lib) types;
  cfg = config.services.opengist;

  stateDir = "/var/lib/opengist";
  settingsFormat = pkgs.formats.yaml { };
  settingsType = types.submodule {
    freeformType = settingsFormat.type;

    options = {
      log-level = lib.mkOption {
        type = types.enum [ "trace" "debug" "info" "warn" "error" "fatal" "panic" ];
        description = lib.mdDoc "Server log level";
        default = "warn";
      };
      log-output = lib.mkOption {
        type = types.str;
        description = lib.mdDoc "Log output location; comma separated list of `stdout` and/or `file`";
        # goes into the journal, don't need a separate log
        default = "stdout";
      };
      external-url = lib.mkOption {
        type = types.nullOr types.str;
        description = lib.mdDoc "External URL of the instance";
        default = null;
      };
      opengist-home = lib.mkOption {
        type = types.path;
        description = lib.mdDoc "Path to the directory where opengist stores its data";
        readOnly = true;
        default = stateDir;
      };

      http.host = lib.mkOption {
        type = types.str;
        description = lib.mdDoc "The host on which opengist will bind http";
        default = "0.0.0.0";
        example = "127.0.0.1";
      };

      http.port = lib.mkOption {
        type = types.port;
        description = lib.mdDoc "The port on which opengist will bind http";
        default = 6157;
        example = 1234;
      };

      http.git-enabled = lib.mkOption {
        type = types.bool;
        description = lib.mdDoc "Whether to enable git access via http";
        default = true;
        example = false;
      };

      ssh.git-enabled = lib.mkOption {
        type = types.bool;
        description = lib.mdDoc "Whether to enable git access via ssh";
        default = true;
        example = false;
      };

      ssh.host = lib.mkOption {
        type = types.str;
        description = lib.mdDoc "The host on which opengist will bind ssh";
        default = "0.0.0.0";
        example = "127.0.0.1";
      };

      ssh.port = lib.mkOption {
        type = types.port;
        description = lib.mdDoc "The port on which opengist will bind ssh";
        default = 2222;
        example = 1234;
      };
    };
  };
in
{
  options.services.opengist = {
    enable = lib.mkEnableOption "opengist service";
    package = lib.mkPackageOption pkgs "opengist" { };

    settings = lib.mkOption {
      type = settingsType;
      default = { };

      description = lib.mdDoc ''
        opengist configuration, see
        <https://github.com/thomiceli/opengist/blob/master/docs/configuration/cheat-sheet.md>
        for documentation.
      '';
    };

    settingsFile = lib.mkOption {
      type = types.path;
      default = settingsFormat.generate "opengist-config.yaml" cfg.settings;
      defaultText = "(generated YAML config from services.opengist.settings)";

      description = lib.mdDoc ''
        Settings file. Prefer to use {option}`services.opengist.settings`.
      '';
    };
  };

  config = lib.mkIf cfg.enable {
    users.groups.opengist = { };
    users.users.opengist = {
      description = "opengist service user";
      isSystemUser = true;
      group = "opengist";
    };

    systemd.services.opengist = {
      description = "Open source git-based pastebin";
      documentation = [ "https://github.com/thomiceli/opengist" ];
      wantedBy = [ "multi-user.target" ];
      after = [ "networking.target" ];

      path = with pkgs; [ git openssh ];

      serviceConfig = {
        User = "opengist";
        Group = "opengist";

        ExecStart = "${lib.getBin cfg.package}/bin/opengist -config ${cfg.settingsFile}";

        DynamicUser = true;
        StateDirectory = [ "opengist" ];
        WorkingDirectory = "/var/lib/opengist";

        RestrictAddressFamilies = [
          "AF_INET"
          "AF_INET6"
          # Required for connecting to database sockets,
          # and listening to unix socket at `cfg.settings.path`
          "AF_UNIX"
        ];
        RestrictNamespaces = true;
        RestrictRealtime = true;
        RestrictSUIDSGID = true;
        SocketBindAllow = [ cfg.settings.http.port cfg.settings.ssh.port ];
        SocketBindDeny = [ "any" ];
        SystemCallArchitectures = [ "native" ];
        SystemCallFilter = [
          "@system-service"
          "~@privileged @obsolete"
          "@pkey"
        ];
        PrivateDevices = true;
        PrivateUsers = true;
        MemoryDenyWriteExecute = true;
        ProtectClock = true;
        ProtectControlGroups = true;
        ProtectKernelModules = true;
        ProtectHostname = true;
        ProtectProc = "noaccess";
        ProtectHome = true;
        ProtectKernelLogs = true;
        ProtectKernelTunables = true;
        LockPersonality = true;
        ProcSubset = "pid";
        CapabilityBoundingSet = [ "" ];
        UMask = "0077";
      };
    };
  };
}
