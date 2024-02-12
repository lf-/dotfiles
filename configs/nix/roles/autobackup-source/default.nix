# Source machine for zfs-autobackup
{ config, ... }:
let creds = import ../../lib/creds.nix;
in
{
  users.users.zfsbackup = {
    isNormalUser = true;
    openssh.authorizedKeys.keys = creds.autobackup.${config.networking.hostName}.sshKeys;
  };

  # FIXME: automate setting up the zfs datasets with permissions
  # send side:
  # zfs allow -u zfsbackup destroy,hold,mount,release,send,snapshot DATASET
  # receive side:
  # zfs allow -u autobackup_HOSTNAME canmount,compression,create,destroy,encryption,hold,mount,mountpoint,receive,release,rollback,userprop DATASET
  #
  # note: due to a bug: https://github.com/psy0rz/zfs_autobackup/wiki/Mounting
  # the zfs autobackup service will attempt to mount by default. this will fail,
  # since it cannot mount rootlessly in the root mount namespace.
  #
  # Fix expected with zfs autobackup 3.3, but ultimately this is not that bad a
  # bug as the following backup run will succeed.
  #
  # https://github.com/psy0rz/zfs_autobackup/issues/112
}
