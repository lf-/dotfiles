{ config, pkgs, lib, ... }:
with lib;
{
  options = {
    jade.wireguard = {
      enable = mkEnableOption "jade wireguard";
      upstreamInterface = mkOption {
        description = "upstream interface for wireguard vpn server";
        type = types.str;
        default = "eth0";
      };
    };
  };

  config = mkIf config.jade.wireguard.enable (
    let iface = config.jade.wireguard.upstreamInterface;
    in
    {
      systemd.tmpfiles.rules = [
        "d /private/wireguard 700 root root - -"
      ];
      boot.kernel.sysctl."net.ipv4.ip_forward" = "1";
      boot.kernel.sysctl."net.ipv6.ip_forward" = "1";

      networking.firewall.allowedUDPPorts = [
        443
      ];

      networking.nat = {
        enable = true;
        internalInterfaces = [ "wg0" ];
        internalIPs = [ "172.31.0.0/24" ];
        externalInterface = iface;
      };

      networking.wireguard = {
        enable = true;
        interfaces = {
          "wg0" = {
            ips = [ "172.31.0.1/24" ];
            generatePrivateKeyFile = true;
            privateKeyFile = "/private/wg.key";

            listenPort = 443;

            peers = [
              # thinpad
              {
                publicKey = "7zsX/nnaa315GMm/dYIA6lbMH4aif36Uur2c85b2GQs=";
                allowedIPs = [ "172.31.0.2/32" ];
              }
            ];
          };
        };
      };
      environment.systemPackages = [
        pkgs.wireguard-tools
      ];
    }
  );
}
