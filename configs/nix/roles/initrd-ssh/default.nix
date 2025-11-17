{ lib, pkgs, ... }:
let
  creds = import ../../lib/creds.nix;
in
{
  boot.initrd = {
    systemd = {
      enable = true;
      services = {
        systemd-networkd = {
          # show network logs on the console
          serviceConfig = {
            StandardOutput = "journal+console";
            StandardError = "journal+console";
          };
        };
      };

      contents = {
        "/etc/motd".text = ''
          Run `systemctl default` to unlock the disk :)
        '';
      };

      network.networks."99-ethernet-default-dhcp" = {
        matchConfig = {
          Type = "ether";
          Kind = "!*"; # physical interfaces have no kind
        };
        DHCP = "yes";
        networkConfig = {
          IPv6PrivacyExtensions = "kernel";
          MulticastDNS = true;
        };
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
      enable = true;
    };
  };
  boot.initrd.secrets = {
    # workaround a bug in the ssh module where if given a string it is passed
    # through as-is to boot.initrd.secrets and thereby tampers the running
    # system. goofy.
    # Also it is fragile garbage that probably will break if clean installing
    # the system.
    "/etc/ssh/initrd-host-key" = "/etc/ssh/initrd-ssh-host-ed25519";
  };

  systemd.services.create-initrd-ssh-key = {
    unitConfig = {
      ConditionPathExists = "!/etc/ssh/initrd-ssh-host-ed25519";
    };
    # just make absolutely sure it starts late enough
    after = [ "sshd.service" ];
    wantedBy = [ "multi-user.target" ];
    script = ''
      ${lib.getExe' pkgs.openssh "ssh-keygen"} -t ed25519 -N "" -q -f /etc/ssh/initrd-ssh-host-ed25519
    '';
  };
}
