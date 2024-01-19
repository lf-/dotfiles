{ pkgs, flakey-profile }:
flakey-profile.lib.mkProfile {
  inherit pkgs;
  paths = with pkgs; [
    cacert
    nix
    nix-doc
  ];
}
