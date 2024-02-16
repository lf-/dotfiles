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

  # ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGqSQJ9cahTI2UMLIJgV0OMmfecnqNwXuoYe/aX6ekCt
  "autobackup_tail-bot.age".publicKeys = users.jade ++ hosts.cube;
  # ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAav+bdQWpnBPxTPnlPPSucyFTNzXOVw4t14M4LV2dZR
  "autobackup_voracle.age".publicKeys = users.jade ++ hosts.cube;

  "webdav-creds.age".publicKeys = users.jade ++ hosts.voracle;
}
