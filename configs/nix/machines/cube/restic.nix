{ config, pkgs, ... }:
let
  mkDirectory = paths: {
    environmentFile = config.age.secrets.b2-restic-keys.path;
    passwordFile = config.age.secrets.b2-restic-password.path;
    repositoryFile = config.age.secrets.b2-restic-repo.path;
    inherit paths;
    exclude = [
      ".dtrash"
      ".Trash-1000"
      "immich/thumbs"
    ];
    extraBackupArgs = [ "--read-concurrency=6" "-vv" ];
  };
in
{
  age.secrets.b2-restic-keys.file = ./b2-restic-keys.age;
  age.secrets.b2-restic-password.file = ./b2-restic-password.age;
  age.secrets.b2-restic-repo.file = ./b2-restic-repo.age;

  environment.systemPackages = with pkgs; [
    restic
  ];

  services.restic.backups = {
    photos = mkDirectory [ "/tank/photos/" ];
    music = mkDirectory [ "/tank/music/" ];
  };
}
