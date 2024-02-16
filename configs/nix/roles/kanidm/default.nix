{ pkgs, lib, config, ... }:
let
  cfg = config.jade.kanidm;
  baseDomain = "id.jade.fyi";
  thisMachine = "${config.networking.hostName}.${baseDomain}";
  restartUnits = [ "kanidm.service" ];
  port = 53423;

  renewalScript = pkgs.substituteAll {
    src = ./on-renew.sh;
    isExecutable = true;
    path = [ config.systemd.package pkgs.coreutils pkgs.util-linux ];
    domains = [ thisMachine ];
    inherit (pkgs) bash;
    inherit restartUnits;
  };

  package = pkgs.kanidm;

  makeWrapperArgs = "--run ${lib.escapeShellArg ''
    export KANIDM_TLS_KEY=$CREDENTIALS_DIRECTORY/tls.key
    export KANIDM_TLS_CHAIN=$CREDENTIALS_DIRECTORY/tls.crt
  ''}";

  wrapped = pkgs.runCommand "kanidm-wrapped" { buildInputs = [ pkgs.xorg.lndir pkgs.makeWrapper ]; } ''
    mkdir -p $out
    lndir ${package} $out
    rm $out/bin/kanidmd
    makeWrapper ${package}/bin/kanidmd \
      $out/bin/kanidmd \
      ${makeWrapperArgs}
  '';
in
{
  options = {
    jade.kanidm = {
      enable = lib.mkEnableOption "kanidm server";
      dataDir = lib.mkOption {
        description = "data directory for the kanidm service";
        type = lib.types.path;
      };
    };
  };

  config = lib.mkIf cfg.enable {
    system.build.renewalScript = renewalScript;
    services.kanidm = {
      package = wrapped;
      enableServer = true;
      serverSettings = {
        origin = "https://${baseDomain}";
        domain = baseDomain;
        bindaddress = "[::1]:${toString port}";
        # tls_chain = "/var/lib/caddy/certs-export/${thisMachine}/${thisMachine}.crt";
        # tls_key = "/var/lib/caddy/certs-export/${thisMachine}/${thisMachine}.key";
        tls_chain = "/dev/null";
        tls_key = "/dev/null";
      };
    };

    systemd.services.kanidm = {
      serviceConfig = {
        BindPaths = [ "${cfg.dataDir}:/var/lib/kanidm" ];

        LoadCredential = [
          "tls.crt:/var/lib/caddy/certs-export/${thisMachine}/${thisMachine}.crt"
          "tls.key:/var/lib/caddy/certs-export/${thisMachine}/${thisMachine}.key"
        ];
      };
    };

    systemd.tmpfiles.rules = [
      "d ${cfg.dataDir} 0700 kanidm kanidm"
    ];

    age.secrets.kanidm-acme-dns-reg.file = ../../secrets/acme-dns-reg-voracle.age;
    systemd.services.caddy = {
      serviceConfig = {
        LoadCredential = [ "kanidm-acme-dns-reg:${config.age.secrets.kanidm-acme-dns-reg.path}" ];
      };
    };

    services.caddy = {
      virtualHosts.${thisMachine} = {
        extraConfig = ''
          tls {
            dns acmedns {$CREDENTIALS_DIRECTORY}/kanidm-acme-dns-reg
          }

          reverse_proxy [::1]:${toString port}
        '';
      };
      globalConfig = ''
        events {
          on cert_obtained exec ${renewalScript} {event.data.identifier} {event.data.issuer} {event.data.certificate_path} {event.data.private_key_path}
        }
      '';
    };

    security.polkit.extraConfig = builtins.replaceStrings
      [ "@UNITS@" ]
      [ (toString restartUnits) ]
      (builtins.readFile ./polkit-rules.js);
  };
}
