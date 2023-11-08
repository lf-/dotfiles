{ config, pkgs, lib, ... }:
let inherit (lib) mkMerge mkIf;
  creds = import ../../lib/creds.nix;
in
{
  options = {
    jade.rootSshKeys.enable = lib.mkEnableOption "root ssh keys";
  };
  config = {
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
    users.users.root.openssh.authorizedKeys.keys = mkIf config.jade.rootSshKeys.enable creds.jade.sshKeys;
  };
}
