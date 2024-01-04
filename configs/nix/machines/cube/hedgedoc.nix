{ pkgs, lib, ... }:
let
  domain = "pad.h.jade.fyi";
  port = 17490;
in
{
  services.hedgedoc = {
    enable = true;
    settings = {
      inherit domain port;
      protocolUseSSL = true;
      db = {
        dialect = "sqlite";
        storage = "/tank/srv/hedgedoc/db.sqlite";
      };
      uploadsPath = "/tank/srv/hedgedoc/uploads";
      allowGravatar = false;
    };
  };

  systemd.tmpfiles.rules = [
    "d /tank/srv/hedgedoc 0770 hedgedoc hedgedoc"
    "d /tank/srv/hedgedoc/uploads 0770 hedgedoc hedgedoc"
  ];

  jade.caddy-wildcard.hosts.${domain} = ''
    reverse_proxy 127.0.0.1:${toString port}
  '';
}
