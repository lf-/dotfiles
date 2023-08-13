{ pkgs, lib, config, ... }: with lib; let
  canonicalizePortList =
    ports: lib.unique (builtins.sort builtins.lessThan ports);
  cfg = config.jade.tailscale;
in
{
  options = {
    jade.tailscale.allowedTCPPorts = mkOption {
      type = types.listOf types.port;
      default = [ ];
      apply = canonicalizePortList;
      description = ''
        Ports to allow on the tailscale interface.
      '';
    };
  };

  config = {
    networking.firewall.extraInputRules = mkIf (length cfg.allowedTCPPorts > 0)
      "iifname ${config.services.tailscale.interfaceName} tcp dport { ${concatMapStringsSep ", " toString cfg.allowedTCPPorts} } accept";

    services.tailscale = {
      enable = true;
    };

    networking.firewall.checkReversePath = "loose";

    # Moved to rawethernet role due to combining of nodevice opts being broken
    # services.connman.extraFlags = [ "--nodevice=${config.services.tailscale.interfaceName}" ];
  };
}
