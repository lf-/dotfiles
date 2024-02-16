{ config, ... }:
let
  domain = "pad.jade.fyi";
  port = 17490;
  basePath = "/data/hedgedoc";
  dbPath = "${basePath}/db.sqlite";
  uploadsPath = "${basePath}/uploads";

  idpBase = "https://id.jade.fyi";
  idpConsts = import ../../lib/idp.nix { baseUrl = idpBase; clientId = idpClientId; };
  idpClientId = "hedgedoc_oauth";
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

      oauth2 = {
        clientId = idpClientId;
        userProfileURL = idpConsts.oidcUserInfo;
        baseURL = idpBase;
        tokenURL = idpConsts.tokenUrl;
        authorizationURL = idpConsts.apiAuthUrl;
        userProfileEmailAttr = "email";
        userProfileUsernameAttr = "preferred_username";
        userProfileDisplayNameAttr = "name";
        userProfileIdAttr = "sub";
        scope = "openid email profile";
      };
    };
  };

  age.secrets.hedgedoc-oauth.file = ../../secrets/hedgedoc-oauth.age;

  systemd.services.hedgedoc = {
    serviceConfig = {
      ReadWritePaths = [ "-${basePath}" ];
      EnvironmentFile = config.age.secrets.hedgedoc-oauth.path;
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
