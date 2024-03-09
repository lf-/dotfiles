{ config, ... }:
let
  domain = "paste.jade.fyi";
  basePath = "/data/opengist";
  port = 6157;
in
{
  imports = [ ../../modules/opengist.nix ];

  services.opengist = {
    enable = true;
    settings = {
      log-level = "trace";
      external-url = "https://${domain}";
      "git.default-branch" = "main";
      "http.host" = "127.0.0.1";
      "http.port" = port;
      "ssh.git-enabled" = true;
      "ssh.port" = 2022;
      "ssh.host" = "0.0.0.0";
    };
  };
  networking.firewall.allowedTCPPorts = [ 2022 ];

  jade.caddy-wildcard.hosts.${domain} = {
    action = ''
      reverse_proxy localhost:${toString port}
    '';
    publicAccess = true;
  };

  # OG_OIDC_CLIENT_KEY
  # OG_OIDC_SECRET
  # OG_OIDC_DISCOVERY_URL
  age.secrets.opengist-oauth.file = ../../secrets/opengist-oauth.age;

  systemd.services.opengist = {
    serviceConfig = {
      BindPaths = [ "${basePath}:/var/lib/opengist" ];
      EnvironmentFile = config.age.secrets.opengist-oauth.path;
    };
  };

  systemd.tmpfiles.rules = [
    "d ${basePath} 0770 opengist opengist"
  ];
}
