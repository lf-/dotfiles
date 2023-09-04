{ pkgs, config, lib, ... }:
let cfg = config.jade.rawethernet;
in
{
  options = {
    jade.rawethernet = {
      enable = lib.mkEnableOption "raw ethernet";
      interfaceName = lib.mkOption {
        description = "Interface to use for raw ethernet";
        type = lib.types.str;
      };
    };
  };

  config = {
    services.connman.extraFlags = [ "--nodevice=${lib.optionalString cfg.enable "en*,eth*,"}hostonly,${config.services.tailscale.interfaceName},veth*" ];
    networking.nftables.enable = true;

    networking.firewall.extraInputRules = ''
      iifname ${cfg.interfaceName} tcp dport 53 accept
      iifname ${cfg.interfaceName} udp dport 53 accept
      iifname ${cfg.interfaceName} udp dport 67 accept
    '';
  };
}
