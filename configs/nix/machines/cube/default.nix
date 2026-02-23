{ config, pkgs, lib, ... }:
let
  hplip-hpijs = pkgs.callPackage ../../packages/hplip-hpijs { };
  creds = import ../../lib/creds.nix;
in
{
  imports = [
    ../../roles/linux
    ../../roles/users
    ../../roles/tailscale
    ../../roles/physical
    ../../roles/debug
    ../../roles/avahi
    ../../roles/kanidm
    ../../roles/oauth2-proxy
    ../../modules/caddy-wildcard.nix
    ../../modules/immich
    ./jasperlake.nix
    ./unbound.nix
    ./zfs.nix
    ./autobackup.nix
    ./jellyfin.nix
    ./octoprint.nix
    ./restic.nix
    ./immich.nix
    ./hardware-configuration.nix
  ];

  boot.supportedFilesystems = [ "btrfs" ];
  boot.initrd.supportedFilesystems = [ "ext4" ];
  # intel gigabit ethernet
  boot.initrd.availableKernelModules = [ "igc" ];

  age.secrets.initrd-ssh-host-ed25519.file = ./initrd-ssh-host-ed25519.age;
  # initrd crimes so that it will have the keybag loaded at early boot
  boot.initrd = {
    systemd = {
      mounts = [
        {
          where = "/keybag";
          what = "/dev/mapper/keybag";
          type = "ext4";
          requires = [ "systemd-cryptsetup@keybag.service" ];
          after = [ "systemd-cryptsetup@keybag.service" ];

          requiredBy = [ "zfs-import-zroot.service" ];
          before = [ "zfs-import-zroot.service" ];
        }
        {
          where = "/tailscale-initrd";
          what = "zroot/tailscale-initrd";
          type = "zfs";
        }
      ];

      services.tailscaled = {
        description = "Tailscale Daemon";
        serviceConfig = {
          ExecStart = "${lib.getExe' config.services.tailscale.package "tailscaled"} --state=/tailscale-initrd/state";
          Type = "simple";
          KillMode = "process";
          Restart = "on-failure";
        };
        unitConfig.DefaultDependencies = false;
        after = [ "tailscale-initrd.mount" "network.target" ];
        before = [ "shutdown.target" ];
        conflicts = [ "shutdown.target" ];
        requires = [ "tailscale-initrd.mount" ];
        wantedBy = [ "initrd.target" ];
      };
    };
    network = {
      enable = true;
      ssh = {
        enable = true;
        authorizedKeys = creds.jade.sshKeys;
        ignoreEmptyHostKeys = true;
        hostKeys = [ ];
        extraConfig = ''
          HostKey /etc/ssh/initrd-host-key
        '';
      };
    };
    services.resolved = {
      # FIXME: broken due to transitive dependency on local-fs.target
      enable = false;
    };
  };
  boot.initrd.secrets = {
    # workaround a bug in the ssh module where if given a string it is passed
    # through as-is to boot.initrd.secrets and thereby tampers the running
    # system. goofy.
    # Also it is fragile garbage that probably will break if clean installing
    # the system.
    "/etc/ssh/initrd-host-key" = config.age.secrets.initrd-ssh-host-ed25519.path;
  };

  time.timeZone = "UTC";

  # unused since we just haven't done the userspace for it and it's Fine
  /*
    boot.kernelPackages = pkgs.linuxPackages.extend (self: super: {
    kernel = super.kernel.override (old: {
      kernelPatches = old.kernelPatches ++ [
        {
          name = "it8613e_support";
          patch = ../../overlays/patches/kernel/it87_it8613e.patch;
        }
      ];
    });
    });
  */

  boot.initrd.systemd = {
    enable = true;
    emergencyAccess = "$2b$05$1wdLRpAwtirLmS3VniajbOF94vTJCkzbpp4bkQPPhSnUi7ynTJsAG";
  };

  networking.useNetworkd = true;

  services.resolved.settings.Resolve.DNSStubListener = "no";

  jade.kanidm = {
    enable = true;
    dataDir = "/tank/srv/kanidm";
  };

  environment.systemPackages = with pkgs; [
    rclone
    dig
  ];

  boot.zfs.extraPools = [ "tank" ];

  users.groups.tank = {
    gid = 992;
  };
  users.groups.tank_public = {
    gid = 991;
  };
  users.groups.tank_media = {
    gid = 982;
  };
  # group of /tank/backup/zfs, which allows seeing what's in there but nothing
  # more
  users.groups.autobackup = { };
  users.groups.tank_photos = {
    gid = 979;
  };

  users.users.jade.extraGroups = [
    "tank"
    "tank_public"
    "tank_media"
    "tank_photos"
    "autobackup"
  ];
  users.users.jellyfin.extraGroups = [ "tank_media" ];

  users.users.smbguest = {
    expires = "1970-01-02";
    shell = "/run/current-system/sw/bin/nologin";
    isNormalUser = true;
    group = "nogroup";
    extraGroups = [ "tank_public" ];
  };

  users.users.agatha = {
    openssh.authorizedKeys.keys = creds.agatha.sshKeys;
    isNormalUser = true;
  };

  services.samba =
    let
      mkShare = name: {
        path = "/tank/${name}";
        browseable = "yes";
        public = "no";
        "read only" = "no";
        "valid users" = "@tank";
        "force group" = "tank";
        # mask perms with 0664
        "create mask" = "0660";
        # force perms to 0664
        "force create mode" = "0660";
        "directory mask" = "2770";
        "force directory mode" = "2770";
      };
      mkMediaShare = name: {
        path = "/tank/${name}";
        browseable = "yes";
        public = "no";
        "read only" = "no";
        "valid users" = "@tank_media";
        "force group" = "tank";
        # mask perms with 0664
        "create mask" = "0664";
        # force perms to 0664
        "force create mode" = "0664";
        "directory mask" = "2775";
        "force directory mode" = "2775";
      };
    in
    {
      enable = true;
      openFirewall = true;
      enableNmbd = false;
      shares = {
        media = mkMediaShare "media";
        music = mkMediaShare "music";
        archive = mkShare "archive";
        documents = mkShare "documents";
        photos = mkShare "photos";
        public = {
          path = "/tank/public";
          browseable = "yes";
          "guest ok" = "yes";
          "read only" = "no";
          "force group" = "tank_public";
          comment = "public share";
        };
      };
      settings = {
        global = {
          # log to journald
          logging = "systemd";
          "log level" = 3;

          # we dont do legacy here
          "server min protocol" = "SMB3_00";

          "guest account" = "smbguest";
          # if the evil bit is set,,, but i think this applies to when windows
          # tries to auth as a user that doesn't exist.
          "map to guest" = "bad user";

          # make fruity devices work properly (hi im a fruity device...???)
          "vfs objects" = "fruit streams_xattr";
          # we have the zettabyte filesystem, why not
          "fruit:resource" = "xattr";
        };
      };
    };

  networking.firewall.allowedTCPPorts = [
    80
    443
    # torrent
    1337
  ];
  services.caddy = {
    enable = true;
    # acmeCA = "https://acme-staging-v02.api.letsencrypt.org/directory";
    email = creds.data.acmeEmail;
  };

  services.avahi = {
    extraServiceFiles = {
      pwinter = builtins.readFile ./pwinter.xml;
    };
  };
  services.printing = {
    enable = true;
    drivers = [ hplip-hpijs ];
    listenAddresses = [ "*:631" ];
    openFirewall = true;
    allowFrom = [
      "localhost"
      "100.64.0.0/10"
      "cube"
      "cube.van.lfcode.ca"
      "@LOCAL"
    ];
    # Allows access via additional hostnames
    extraConf = ''
      ServerAlias cube
      ServerAlias cube.van.lfcode.ca
    '';
    # This is required since the default PATH for running CUPS filters doesn't
    # have a sh in it, and ghostscript tries to invoke hpijs with `sh -c`.
    extraFilesConf = ''
      SetEnv PATH /var/lib/cups/path/lib/cups/filter:/var/lib/cups/path/bin:/run/current-system/sw/bin
    '';
  };

  # mysql, chiefly for digikam
  services.mysql = {
    package = pkgs.mariadb;
    enable = true;
  };
  systemd.services.mysql = {
    serviceConfig = {
      BindPaths = [ "/tank/srv/mysql:/var/lib/mysql" ];
    };
  };
  systemd.tmpfiles.rules = [
    "d /tank/srv/mysql 0770 mysql mysql"
  ];
  jade.tailscale.allowedTCPPorts = [ 3306 ];

  age.secrets.acme-dns-reg.file = ../../secrets/acme-dns-reg.age;

  age.secrets.backups-key.file = ../../secrets/backups-key.age;

  jade.caddy-wildcard = {
    enable = true;
    dnsRegistrationPath = config.age.secrets.acme-dns-reg.path;
    wildcardCertDomain = "*.h.jade.fyi";
  };

  virtualisation.podman.defaultNetwork.settings = {
    dns_enabled = true;
  };
  boot.kernel.sysctl = {
    "net.ipv4.ip_forward" = "1";
    "net.ipv6.ip_forward" = "1";
  };

  jade.rootSshKeys.enable = true;

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "cube";
  networking.hostId = "8b4498a5";

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.11"; # Did you read the comment?
}
