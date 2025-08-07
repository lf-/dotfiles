{
  config,
  lib,
  pkgs,
  modulesPath,
  ...
}:
{
  imports = [
    ../../roles/base
    ../../roles/users
    ../../roles/linux
    "${modulesPath}/profiles/qemu-guest.nix"
    ./hardware-configuration.nix
  ];

  jade.rootSshKeys.enable = true;

  networking.hostName = "thinnernix";

  system.stateVersion = "25.05";
}
