{ pkgs, config, ... }: {
  services.jellyfin = {
    enable = true;
  };

  jade.caddy-wildcard.hosts = {
    "stream.h.jade.fyi" = {
      publicAccess = true;
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
          reverse_proxy 127.0.0.1:8096
        }
      '';
    };
    # stream via tailscale to skip the public oauth2
    "stream-ts.h.jade.fyi" = {
      publicAccess = false;
      action = ''
        reverse_proxy 127.0.0.1:8096
      '';
    };
  };

  # absurdly, jellyfin wants to be able to write to this meta file to store its
  # internal state. sigh.
  systemd.tmpfiles.rules = [
    "C+ /var/lib/jellyfin/plugins/sso 755 jellyfin jellyfin - ${pkgs.jellyfin-plugin-sso}"
    "z /var/lib/jellyfin/plugins/sso/meta.json 644 jellyfin jellyfin - -"
  ];
}
