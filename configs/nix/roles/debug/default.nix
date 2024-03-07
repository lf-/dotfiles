{ pkgs, config, lib, ... }: {
  environment.systemPackages = with pkgs; [
    ripgrep

    whois
    nethogs
    ethtool
    dogdns
    bind.dnsutils
    tcpdump
  ];
}
