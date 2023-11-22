{ pkgs, config, lib, ... }: {
  environment.systemPackages = with pkgs; [
    ripgrep

    nethogs
    ethtool
    dogdns
    bind.dnsutils
    tcpdump
  ];
}
