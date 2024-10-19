{ pkgs, config, ... }:
{
  # unfortunately all this stuff is variously un(der)maintained. perfect is the
  # enemy of good, so just use the one that's least cursed and we replace it
  # when it sucks.
  jade.tailscale.allowedTCPPorts = [ 9999 ];

  nixpkgs.overlays = [(final: prev: {
    # pin to 4.2.0 via goofy means because the nixos module is of dubious quality
    # pinning to avoid regression: https://github.com/hacdias/webdav/issues/190
    webdav = pkgs.callPackage ./package.nix { };
  })];

  services.webdav = {
    enable = true;

    settings = {
      address = "0.0.0.0";
      # FIXME: should reverse-proxy this, really. ugh.
      port = 9999;
      scope = "/data/webdav";
      modify = true;
      auth = true;
      debug = true;
      users = [
        {
          username = "{env}USER1_USERNAME";
          password = "{env}USER1_PASSWORD";
        }
      ];
    };
    environmentFile = config.age.secrets.webdav-creds.path;
  };
  # this is definitely sketchy to hard code, we should really do this way better
  age.secrets.webdav-creds.file = ../../secrets/webdav-creds.age;

  systemd.tmpfiles.rules = [
    "d /data/webdav 0770 root webdav"
  ];
}
