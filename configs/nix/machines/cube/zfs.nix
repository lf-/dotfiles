{ config, pkgs, ... }: {
  systemd.mounts = [
    {
      description = "snowflake backup target";
      what = "/dev/zvol/tank/backup/snowflake_raw";
      where = "/tank/backup/snowflake";
      type = "btrfs";
      options = "nossd";

      wants = [ "tank-backup.mount" ];
      after = [ "tank-backup.mount" ];
      wantedBy = [ "local-fs.target" ];
    }
  ];
}
