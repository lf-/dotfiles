{ config, pkgs, lib, ... }:
let
  inherit (lib) mkMerge;
  creds = import ../../lib/creds.nix;

  makeKnownHosts = fqdn: keys: lib.concatMapStringsSep "\n" (s: "${fqdn} ${s}") keys;

  makeService = { name, stuffName, machineCreds, autobackupSet }:
    let
      # hack to deal with the systemd credentials directory
      # hack: hardcoding the host key. this all is extremely not bootstrappable
      # but I'm not sure how to fix it.
      hostKeys = builtins.toFile "known_hosts" (makeKnownHosts machineCreds.fqdn machineCreds.hostKeys);
      sshConfig = pkgs.writeText "ssh_config" ''
        Host *
          IdentityFile /tmp/creds/sshkey
          GlobalKnownHostsFile ${hostKeys}
      '';
    in
    {
      description = "autobackup for ${name}";

      path = [ pkgs.zfs-autobackup pkgs.openssh config.boot.zfs.package ];
      script = ''
        ln -Tsf $CREDENTIALS_DIRECTORY /tmp/creds
        zfs-autobackup --ssh-source zfsbackup@${machineCreds.fqdn} --ssh-config ${sshConfig} --clear-mountpoint --encrypt -v ${autobackupSet} tank/backup/zfs/${name}
      '';

      serviceConfig = {
        LoadCredential = "sshkey:${config.age.secrets.${stuffName}.path}";
        PrivateTmp = true;
        User = "autobackup_${name}";
        Group = "autobackup";
      };
    };
  makeConfig = { name, machineCreds, autobackupSet }:
    let stuffName = "autobackup_${name}";
    in
    {
      age.secrets.${stuffName}.file = ../../secrets + "/${stuffName}.age";
      systemd.services.${stuffName} = makeService { inherit name machineCreds stuffName autobackupSet; };

      systemd.timers.${stuffName} = {
        wantedBy = [ "multi-user.target" ];
        timerConfig = {
          OnCalendar = "*-*-* 02:00 America/Vancouver";
          RandomizedDelaySec = "30min";
        };
      };

      users.users.${stuffName} = {
        isNormalUser = true;
        extraGroups = [ "autobackup" ];
      };
    };
in
{
  config = mkMerge [
    (makeConfig { name = "tail-bot"; machineCreds = creds.machine.tail-bot; autobackupSet = "tail-bot-home"; })
    (makeConfig { name = "voracle"; machineCreds = creds.machine.voracle; autobackupSet = "cube"; })
  ];
}
