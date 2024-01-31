{ config, pkgs, lib, ... }: {
  age.secrets.autobackup_tail-bot.file = ../../secrets/autobackup_tail-bot.age;

  users.users.autobackup_tail-bot = {
    isNormalUser = true;
  };

  # take a backup daily
  systemd.timers.autobackup_tail-bot = {
    wantedBy = [ "multi-user.target" ];
    timerConfig = {
      OnCalendar = "*-*-* 02:00 America/Vancouver";
    };
  };

  systemd.services."autobackup_tail-bot" =
    let
      # hack to deal with the systemd credentials directory
      # hack: hardcoding the host key. this all is extremely not bootstrappable
      # but I'm not sure how to fix it.
      hostKeys = builtins.toFile "known_hosts" ''
        tail-bot.van.lfcode.ca ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFTjOijbFfQQpoGlbku4C2dFVYBx7S03cbkXsjSmU6hh
      '';
      sshConfig = pkgs.writeText "ssh_config" ''
        Host *
          IdentityFile /tmp/creds/sshkey
          GlobalKnownHostsFile ${hostKeys}
      '';
    in
    {
      description = "autobackup for tail-bot";

      path = [ pkgs.zfs-autobackup pkgs.openssh config.boot.zfs.package ];
      script = ''
        ln -Tsf $CREDENTIALS_DIRECTORY /tmp/creds
        zfs-autobackup --ssh-source zfsbackup@tail-bot.van.lfcode.ca --ssh-config ${sshConfig} --clear-mountpoint --encrypt -v tail-bot-home tank/backup/zfs/tail-bot
      '';

      serviceConfig = {
        LoadCredential = "sshkey:${config.age.secrets.autobackup_tail-bot.path}";
        PrivateTmp = true;
        User = "autobackup_tail-bot";
        Group = "nobody";
      };
    };
}
