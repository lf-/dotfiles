{ pkgs, config, ... }: {
  services.connman.extraFlags = [ "--nodevice=en*,eth*,hostonly,${config.services.tailscale.interfaceName},veth*" ];
  networking.nftables.enable = true;
  networking.firewall.extraInputRules = ''
    iifname enp62s0u1u3 tcp dport 53 accept
    iifname enp62s0u1u3 udp dport 53 accept
    iifname enp62s0u1u3 udp dport 67 accept
  '';
}
