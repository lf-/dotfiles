{ config, pkgs, ... }:
{
  age.secrets.b2-restic-keys.file = ./b2-restic-keys.age;

  environment.systemPackages = with pkgs; [
    restic
  ];
}
