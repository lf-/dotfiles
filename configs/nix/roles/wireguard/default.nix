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

      networking.wireguard = {
        enable = true;
        interfaces = {
          "wg0" = {
            ips = [ "172.31.0.1/24" ];
            generatePrivateKeyFile = true;
            privateKeyFile = "/private/wg.key";

            listenPort = 443;
            preSetup = ''
              # verify the interface exists
              ip link show ${iface} >/dev/null 2>&1
            '';

            postSetup = ''
              iptables -A FORWARD -i wg0 -j ACCEPT
              iptables -A FORWARD -o wg0 -j ACCEPT
              iptables -t nat -A POSTROUTING -o ${iface} -j MASQUERADE
            '';

            postShutdown = ''
              iptables -D FORWARD -i wg0 -j ACCEPT
              iptables -D FORWARD -o wg0 -j ACCEPT
              iptables -t nat -D POSTROUTING -o ${iface} -j MASQUERADE
            '';
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
