{ config, ... }:
let
  basePath = "/data/postgres";
  cfg = config.services.postgresql;
in
{
  services.postgresql = {
    enable = true;
    dataDir = "${basePath}/${cfg.package.psqlSchema}";
  };
}
