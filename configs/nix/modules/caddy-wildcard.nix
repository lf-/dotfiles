{ config, pkgs, lib, ... }:
let
  cfg = config.jade.caddy-wildcard;
  firstComponent = x: builtins.head (builtins.split "\\." x);

  genClause = hostname: hostCfg:
    let label = firstComponent hostname;
    in ''
      @${label} host ${hostname}
      handle @${label} {
          ${hostCfg}
      }
    '';
in
{
  options.jade.caddy-wildcard = {
    enable = lib.mkEnableOption "Caddy with wildcard cert";

    dnsRegistrationPath = lib.mkOption {
      description = "Path to DNS registration secrets";
      type = lib.types.path;
    };

    wildcardCertDomain = lib.mkOption {
      description = lib.mdDoc "Domain for wildcard cert";
      example = "*.example.com";
      type = lib.types.str;
    };

    hosts = lib.mkOption {
      description = lib.mdDoc "Hostname -> action block mapping";
      example = ''
        {
          "foo.example.com" = "respond \"Foo!\"";
        }
      '';
      type = with lib.types; attrsOf str;
      default = { };
    };
  };

  config = lib.mkIf cfg.enable {
    # load the dns registration as a systemd secret
    systemd.services.caddy = {
      serviceConfig = {
        LoadCredential = "acme-dns-reg:${cfg.dnsRegistrationPath}";
      };
    };

    services.caddy = {
      package = pkgs.callPackage ../packages/caddy-with-plugins/package.nix {
        externalPlugins = [
          { name = "acmedns"; repo = "github.com/caddy-dns/acmedns"; version = "v0.3.0"; }
        ];
        vendorHash = "sha256-+jLJAFIH+BA8kCcw0cKo+nZMXX5FyIzl1b9nI6k+suo=";
      };
      virtualHosts."*.h.jade.fyi" = {
        logFormat = "output stderr";
        extraConfig = ''
          tls {
            dns acmedns {$CREDENTIALS_DIRECTORY}/acme-dns-reg
          }

          ${lib.concatMapStringsSep "\n" (n: genClause n cfg.hosts.${n}) (builtins.attrNames cfg.hosts)}

          handle {
              abort
          }
        '';
      };
    };
  };
}
