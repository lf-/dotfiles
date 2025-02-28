# separate hacking role for fun tools that don't need to be on smaller machines
{ pkgs, config, lib, ... }: {
  environment.systemPackages = with pkgs; [
    nmap
    # FIXME: build is bork due to jefferson. yeah idk
    # binwalk
    wireshark
    ghidra

    dsniff

    android-tools
    apktool
    apksigner
  ];
}
