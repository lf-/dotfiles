{ pkgs, config, ... }:
let port = 2283;
in {
  jade.immich.httpPort = port;

  jade.caddy-wildcard.hosts = {
    "immich.h.jade.fyi" = {
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
          reverse_proxy 127.0.0.1:${toString port}
        }
      '';
    };
  };

  age.secrets.immich-container-creds.file = ./immich-container-creds.age;
  users.users.immich.extraGroups = [ "tank_photos" ];
  jade.immich = {
    enable = true;
    postgresDataDir = "/tank/srv/immich/postgres";
    redisDataDir = "/tank/srv/immich/redis";
    uploadDir = "/tank/photos/immich";

    environmentFiles = [
      config.age.secrets.immich-container-creds.path
    ];
  };
}
