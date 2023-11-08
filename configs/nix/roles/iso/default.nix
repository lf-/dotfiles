{ pkgs, lib, modulesPath, ... }:
let
  creds = import ../../lib/creds.nix;
in
{
  imports = [ (modulesPath + "/installer/cd-dvd/installation-cd-base.nix") ];

  users.users.root.openssh.authorizedKeys.keys = creds.jade.sshKeys;
}
