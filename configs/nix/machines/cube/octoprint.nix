{ ... }:
let
  port = 11062;
  domain = "octoprint.h.jade.fyi";
in
{
  services.octoprint = {
    enable = true;
    host = "127.0.0.1";
    inherit port;
  };

  jade.caddy-wildcard.hosts.${domain} = {
    action = ''
      reverse_proxy localhost:${toString port}
    '';
    publicAccess = false;
  };
}
