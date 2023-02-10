# separate hacking role for fun tools that don't need to be on smaller machines
{ pkgs, config, lib, ... }: {
  environment.systemPackages = with pkgs; [
    nmap
    binwalk
    wireshark
  ];
}
