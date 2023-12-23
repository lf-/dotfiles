{ config, lib, pkgs, ... }: {
  # holy crap this is bad code, all because no environment variables in unbound
  # config :(
  systemd.services.unbound.serviceConfig = {
    ExecStartPre = [ "${pkgs.coreutils}/bin/ln -Tsf $CREDENTIALS_DIRECTORY /var/lib/unbound/creds"];
    LoadCredential = "local-dns.conf:${config.age.secrets.local-dns.path}";
  };

  services.unbound = {
    enable = true;
    settings = {
      server = {
        interface = "0.0.0.0";
        access-control = [
          "127.0.0.0/8 allow"
          "192.168.0.0/16 allow"
        ];

        # ughhh ugly
        include = [ "/var/lib/unbound/creds/local-dns.conf" ];
      };
      forward-zone = [
        {
          name = ".";
          forward-addr = [ "8.8.8.8" "8.8.4.4" ];
        }
      ];
      remote-control.control-enable = true;
    };
  };

  age.secrets.local-dns.file = ../../secrets/local-dns.age;

  networking.firewall.allowedTCPPorts = [ 53 ];
  networking.firewall.allowedUDPPorts = [ 53 ];
}
