{ config, pkgs, ... }: {
  # old code to make zfs-mount-generator work
  # but i don't think this is a good way to do it since nixos zfs also does zfs
  # shit and zfs-mount-generator afaict wants to actually mount things.
  # environment.etc."zfs/zed.d/history_event-zfs-list-cacher.sh".source = "${config.boot.zfs.package}/etc/zfs/zed.d/history_event-zfs-list-cacher.sh";
  systemd.mounts = [
    {
      description = "snowflake backup target";
      what = "/dev/zvol/tank/backup/snowflake_raw";
      where = "/tank/backup/snowflake";
      type = "btrfs";
      options = "nossd";

      requires = [ "zfs-import-tank.service" ];
      wantedBy = [ "local-fs.target" ];
    }
  ];
}
