let
  users.jade = [
    "age1tpm1qgfe8w2vrkrerx9eyc8yjsluelas9l62nm0g72cuzcspxlu8t70a5znvftj"
    "age1yubikey1qvqtpkj4kt303rnthv7x6szfgt63dky6p70tjuvs2xwvv2q2eq3wxev803g"
    "age1yubikey1qvcv2ghxkwx3t37whw0ez0mqqc2ctmje9rv9729mrha05a90w7xzwg5g92s"
  ];
  hosts.cube = [ "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBwAQnKgoThFVYC4mjFHLWVcQzlu4d6k3Blu4UDrFh/I root@cube" ];
  hosts.voracle = [ "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBgYhRTgvfLnG0tzyTBsxwBf2+BGPGQaOWHcg8HJPnS9 root@voracle" ];
in
{
  "acme-dns-reg.age".publicKeys = users.jade ++ hosts.cube;
  "local-dns.age".publicKeys = users.jade ++ hosts.cube;
  "backups-key.age".publicKeys = users.jade ++ hosts.cube;
  # ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGqSQJ9cahTI2UMLIJgV0OMmfecnqNwXuoYe/aX6ekCt
  "autobackup_tail-bot.age".publicKeys = users.jade ++ hosts.cube;

  "webdav-creds.age".publicKeys = users.jade ++ hosts.voracle;
}
