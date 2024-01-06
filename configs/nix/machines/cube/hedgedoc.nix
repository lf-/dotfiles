{ pkgs, lib, ... }:
let
  domain = "pad.h.jade.fyi";
  port = 17490;
  dbPath = "/tank/srv/hedgedoc/db.sqlite";
  uploadsPath = "/tank/srv/hedgedoc/uploads";
in
{
  services.hedgedoc = {
    enable = true;
    settings = {
      inherit domain port uploadsPath;
      protocolUseSSL = true;
      db = {
        dialect = "sqlite";
        storage = dbPath;
      };
      allowEmailRegister = false;
      allowGravatar = false;
    };
  };

  systemd.services.hedgedoc = {
    serviceConfig = {
      ReadWritePaths = [ "-/tank/srv/hedgedoc" ];
    };
  };

  systemd.tmpfiles.rules = [
    "d /tank/srv/hedgedoc 0770 hedgedoc hedgedoc"
    # required because *these* are the readwritepaths of the service, not the
    # parent directory, so it cannot create these files itself.
    "d ${uploadsPath} 0770 hedgedoc hedgedoc"
    "f ${dbPath} 0660 hedgedoc hedgedoc"
  ];

  jade.caddy-wildcard.hosts.${domain} = ''
    reverse_proxy localhost:${toString port}
  '';
}
