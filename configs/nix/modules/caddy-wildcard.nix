{ config, pkgs, lib, ... }:
let
  cfg = config.jade.caddy-wildcard;
  firstComponent = x: builtins.head (builtins.split "\\." x);

  genClause = hostname: hostOptions:
    let label = firstComponent hostname;
    in ''
      @${label} {
          host ${hostname}
          ${lib.optionalString (!hostOptions.publicAccess) ''
            remote_ip private_ranges 100.64.0.0/10
          ''}
      }
      handle @${label} {
          ${hostOptions.action}
      }
    '';

  hostOptionsType = lib.types.submodule {
    options = {
      action = lib.mkOption {
        description = lib.mdDoc "Hostname -> action block mapping";
        example = ''
          {
            "foo.example.com" = "respond \"Foo!\"";
          }
        '';
        type = lib.types.str;
      };

      publicAccess = lib.mkOption {
        description = lib.mdDoc "whether to not restrict to the private ip ranges";
        default = false;
        type = lib.types.bool;
      };
    };
  };
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
      type = with lib.types; attrsOf hostOptionsType;
      default = { };
    };
  };

  config = lib.mkIf cfg.enable {
    # load the dns registration as a systemd secret
    systemd.services.caddy = {
      serviceConfig = {
        LoadCredential = [ "acme-dns-reg:${cfg.dnsRegistrationPath}" ];
      };
    };

    services.caddy = {
      package = pkgs.callPackage ../packages/caddy-acmedns/package.nix { };
      virtualHosts.${cfg.wildcardCertDomain} = {
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
