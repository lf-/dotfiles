{ pkgs, lib, modulesPath, ... }:
let
  creds = import ../../lib/creds.nix;
in
{
  imports = [
    (modulesPath + "/installer/cd-dvd/installation-cd-base.nix")
    ../base
  ];

  users.users.root.openssh.authorizedKeys.keys = creds.jade.sshKeys;
  services.fwupd.enable = true;

  environment.systemPackages = with pkgs; [
    # in spite of having superior operating systems we have arch machines anyway
    arch-install-scripts
  ];
}
