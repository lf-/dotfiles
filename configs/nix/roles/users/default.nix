{ config, pkgs, ... }:
let inherit (pkgs.lib) mkMerge mkIf;
  creds = import ../../lib/creds.nix;
in
{
  users.users.jade = mkMerge [
    {
      isNormalUser = true;
      extraGroups = [ "wheel" "video" "dialout" ];

      initialPassword = "changeme";

      openssh.authorizedKeys.keys = creds.jade.sshKeys;

      shell = pkgs.zsh;
    }
    (mkIf config.networking.networkmanager.enable {
      extraGroups = [ "networkmanager" ];
    })
  ];
}
