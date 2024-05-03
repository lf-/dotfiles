{ pkgs, ... }: {
  services.jellyfin = {
    enable = true;
  };

  jade.caddy-wildcard.hosts = {
    "stream.h.jade.fyi" = {
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
