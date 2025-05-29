{ config, ... }:
let
  port = 11062;
in
{
  services.octoprint = {
    enable = true;
    # FIXME: uncomment after https://github.com/NixOS/nixpkgs/pull/411942
    # host = "127.0.0.1";
    inherit port;
  };

  jade.caddy-wildcard.hosts = {
    "octoprint.h.jade.fyi" = {
      action = ''
        handle /_oauth2_proxy/* {
          reverse_proxy ${config.services.oauth2-proxy.httpAddress}
        }
        handle {
          forward_auth ${config.services.oauth2-proxy.httpAddress} {
            uri /_oauth2_proxy/auth
            # copy_headers Authorization

            @bad status 4xx
            handle_response @bad {
              redir * /_oauth2_proxy/start
            }
          }
          reverse_proxy 127.0.0.1:${toString port}
        }
      '';
      publicAccess = true;
    };
    "octoprint-ts.h.jade.fyi" = {
      action = ''
        reverse_proxy localhost:${toString port}
      '';
      publicAccess = false;
    };
  };
}
