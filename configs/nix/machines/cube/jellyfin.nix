{ pkgs, ... }: {
  nixpkgs.overlays = [
    (import ../../overlays/forks.nix)
  ];

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

  systemd.tmpfiles.rules = [
    "L+ /var/lib/jellyfin/plugins/sso - - - - ${pkgs.jellyfin-plugin-sso}"
  ];
}
