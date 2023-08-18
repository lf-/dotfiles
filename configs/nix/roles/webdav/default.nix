{ pkgs, config, ... }:
{
  # unfortunately all this stuff is variously un(der)maintained. perfect is the
  # enemy of good, so just use the one that's least cursed and we replace it
  # when it sucks.
  jade.tailscale.allowedTCPPorts = [ 9999 ];

  services.webdav = {
    enable = true;

    settings = {
      address = "0.0.0.0";
      # FIXME: should reverse-proxy this, really. ugh.
      port = 9999;
      scope = "/srv/webdav";
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
    environmentFile = "/etc/default/webdav";
  };

  systemd.tmpfiles.rules = [
    "d /srv/webdav 0770 root webdav"
  ];
}
