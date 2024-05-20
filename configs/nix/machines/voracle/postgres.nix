{ ... }:
let basePath = "/data/postgres";
in
{
  services.postgresql = {
    enable = true;
    dataDir = basePath;
  };
}
