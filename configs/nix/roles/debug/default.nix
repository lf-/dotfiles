{ pkgs, config, lib, ... }: {
  environment.systemPackages = with pkgs; [
    ripgrep

    whois
    nethogs
    ethtool
    doggo
    bind.dnsutils
    tcpdump
  ];
}
