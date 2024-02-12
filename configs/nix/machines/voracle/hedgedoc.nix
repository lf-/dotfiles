{ ... }:
let
  domain = "pad.jade.fyi";
  port = 17490;
  basePath = "/data/hedgedoc";
  dbPath = "${basePath}/db.sqlite";
  uploadsPath = "${basePath}/uploads";
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
      allowAnonymous = false;
      # bizarre name, but we think it should be sufficient to make it
      # impossible to create guest notes.
      allowAnonymousEdits = true;
    };
  };

  systemd.services.hedgedoc = {
    serviceConfig = {
      ReadWritePaths = [ "-${basePath}" ];
    };
  };

  systemd.tmpfiles.rules = [
    "d ${basePath} 0770 hedgedoc hedgedoc"
    # required because *these* are the readwritepaths of the service, not the
    # parent directory, so it cannot create these files itself.
    "d ${uploadsPath} 0770 hedgedoc hedgedoc"
    "f ${dbPath} 0660 hedgedoc hedgedoc"
  ];

  jade.caddy-wildcard.hosts.${domain} = {
    action = ''
      reverse_proxy localhost:${toString port}
    '';
    publicAccess = true;
  };
}
