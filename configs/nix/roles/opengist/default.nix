{ pkgs, config, ... }:
{
  imports = [ ../../modules/opengist.nix ];

  services.opengist = {
    enable = true;
  };
}
