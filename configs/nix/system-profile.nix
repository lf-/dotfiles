{ pkgs, flakey-profile }:
let inherit (pkgs) lib;
in
flakey-profile.lib.mkProfile {
  inherit pkgs;
  paths = with pkgs; [
    cacert
    nix
    nix-doc
  ] ++ lib.optionals pkgs.stdenv.isDarwin [
    # please no bsd coreutils
    coreutils
  ];
}
