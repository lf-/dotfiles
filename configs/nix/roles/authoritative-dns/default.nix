{ pkgs, config, lib, ... }:
let cfg = config.jade.authoritative-dns;
in {
  # Authoritative DNS service. Provides acme-dns and serves DNS zones.
  #
  # Architecturally, uses unbound as a recursor in front of the two services,
  # which forwards the DNS queries to the appropriate location.

  options.jade.authoritative-dns = {
    enable = lib.mkEnableOption "authoritative DNS setup";
    acme-dns = {
      domain = lib.mkOption {
        description = lib.mdDoc ''
          Domain name of the acme-dns resolver.
        '';
        type = lib.types.str;
        example = "acme-dns.jade.fyi";
      };
      external-ip = lib.mkOption {
        description = lib.mdDoc ''
          External IP address of this machine.
        '';
        type = lib.types.str;
        example = "1.2.3.4";
      };
      port = lib.mkOption {
        description = lib.mdDoc ''
          Port for the acme-dns service.
        '';
        type = lib.types.port;
        default = 6187;
      };
      email = lib.mkOption {
        description = lib.mdDoc ''
          Email to put in SOA, in dotted form.
        '';
        type = lib.types.str;
      };
    };
  };

  config = lib.mkIf cfg.enable {
    # allow dns through the firewall
    networking.firewall.allowedUDPPorts = [ 53 ];
    networking.firewall.allowedTCPPorts = [ 53 ];

    services.acme-dns = {
      enable = true;
      settings.general = {
        listen = "127.0.0.1:${toString cfg.acme-dns.port}";
        domain = cfg.acme-dns.domain;
        nsname = cfg.acme-dns.domain;
        nsadmin = cfg.acme-dns.email;

        records = [
          "${cfg.acme-dns.domain}. A ${cfg.acme-dns.external-ip}"
          "${cfg.acme-dns.domain}. NS ${cfg.acme-dns.domain}."
        ];
      };
      settings.logconfig.loglevel = "debug";
    };

    services.unbound = {
      enable = true;
      # we don't recurse for general queries
      resolveLocalQueries = false;
      # don't use dnssec, we are a weird stub setup
      enableRootTrustAnchor = false;

      settings = {
        server.interface = [ "0.0.0.0" ];
        server.verbosity = 5;
        # we realize why this exists, but it's not a security problem for our
        # use case.
        server.do-not-query-localhost = false;

        # https://serverfault.com/questions/1141841/unbound-dns-without-recursive
        server.local-zone = [
          ''"${cfg.acme-dns.domain}." transparent''
          ''"." refuse''
        ];

        stub-zone = [
          {
            name = cfg.acme-dns.domain;
            stub-addr = "127.0.0.1@${toString cfg.acme-dns.port}";
          }
        ];
      };
    };
  };
}
