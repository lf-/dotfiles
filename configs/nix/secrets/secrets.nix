let
  creds = import ../lib/creds.nix;
  users.jade = [ "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEIDmlXEQJ9jZ7aEpGnryYM1pNv1MkzkPzka08QdgWDx jade@tail-bot" ];
  hosts.cube = [ "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBwAQnKgoThFVYC4mjFHLWVcQzlu4d6k3Blu4UDrFh/I root@cube" ];
in
{
  "acme-dns-reg.age".publicKeys = users.jade ++ hosts.cube;
}
