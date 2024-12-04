let
  creds = import ../lib/creds.nix;
  users.jade = [
    "age1tpm1qgfe8w2vrkrerx9eyc8yjsluelas9l62nm0g72cuzcspxlu8t70a5znvftj"
    "age1yubikey1qvqtpkj4kt303rnthv7x6szfgt63dky6p70tjuvs2xwvv2q2eq3wxev803g"
    "age1yubikey1qvcv2ghxkwx3t37whw0ez0mqqc2ctmje9rv9729mrha05a90w7xzwg5g92s"
  ];
  hosts.cube = creds.machine.cube.hostKeys;
  hosts.voracle = creds.machine.voracle.hostKeys;
in
{
  "acme-dns-reg.age".publicKeys = users.jade ++ hosts.cube;
  # jade.fyi acme dns registration
  "acme-dns-reg-voracle.age".publicKeys = users.jade ++ hosts.voracle ++ hosts.cube;
  "local-dns.age".publicKeys = users.jade ++ hosts.cube;
  "backups-key.age".publicKeys = users.jade ++ hosts.cube;
  "oauth2-proxy-secrets.age".publicKeys = users.jade ++ hosts.cube;

  # ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGqSQJ9cahTI2UMLIJgV0OMmfecnqNwXuoYe/aX6ekCt
  "autobackup_tail-bot.age".publicKeys = users.jade ++ hosts.cube;
  # ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAav+bdQWpnBPxTPnlPPSucyFTNzXOVw4t14M4LV2dZR
  "autobackup_voracle.age".publicKeys = users.jade ++ hosts.cube;
  # intentionally no recovery for this, since they can be regenerated easily
  "../machines/cube/b2-restic-keys.age".publicKeys = hosts.cube;
  # this, however, is higher priority to have accessible imo
  "../machines/cube/b2-restic-password.age".publicKeys = users.jade ++ hosts.cube;
  # barely even sensitive
  "../machines/cube/b2-restic-repo.age".publicKeys = users.jade ++ hosts.cube;
  "../machines/cube/immich-container-creds.age".publicKeys = hosts.cube;
  # ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIK/I0/KkLCsbz26WE5WXf+prDk/kwfslfytY2GWFATeD cube initrd host key
  "../machines/cube/initrd-ssh-host-ed25519.age".publicKeys = hosts.cube;

  "webdav-creds.age".publicKeys = users.jade ++ hosts.voracle;
  "hedgedoc-oauth.age".publicKeys = users.jade ++ hosts.voracle;
  "opengist-oauth.age".publicKeys = users.jade ++ hosts.voracle;
}
