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
    ../../roles/dev
    "${modulesPath}/profiles/qemu-guest.nix"
    ./hardware-configuration.nix
  ];

  jade.dev.withHsutils = false;
  jade.dev.withGui = false;

  jade.rootSshKeys.enable = true;

  networking.hostName = "thinnernix";

  system.stateVersion = "25.05";
}
