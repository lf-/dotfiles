{ pkgs, qyriad-nur }:
let
  qyriad-nur-packages = import qyriad-nur { inherit pkgs; };
in
{
  inherit (pkgs) nvimsplit nvremote vim-swapfile-header spr-sunshowers openttd-claire opengist jellyfin-plugin-sso gerrit-oauth-provider clangbuildanalyzer nix;
  inherit (qyriad-nur-packages) cinny;
}
