{ config, lib, pkgs, ... }:
let base64 = import ../../lib/base64.nix;
in
{
  imports = [
    ../../roles/linux
    ../../roles/users
    ../../roles/tailscale
    ../../roles/physical
    ../../modules/caddy-wildcard.nix
    ./hardware-configuration.nix
  ];

  environment.systemPackages = with pkgs; [
    rclone
  ];

  users.groups.tank = { };
  users.groups.tank_public = { };

  users.users.jade.extraGroups = [ "tank" "tank_public" ];

  users.users.smbguest = {
    expires = "1970-01-02";
    shell = "/run/current-system/sw/bin/nologin";
    isNormalUser = true;
    group = "nogroup";
    extraGroups = [ "tank_public" ];
  };

  services.samba = {
    enable = true;
    openFirewall = true;
    enableNmbd = false;
    shares = {
      media = {
        path = "/tank/media";
        browseable = "yes";
        public = "no";
        "read only" = "no";
        "valid users" = "@tank";
        "force group" = "tank";
        # mask perms with 0664
        "create mask" = "0664";
        # force perms to 0664
        "force create mode" = "0664";
        "directory mask" = "2775";
        "force directory mode" = "2775";
      };
      public = {
        path = "/tank/public";
        browseable = "yes";
        "guest ok" = "yes";
        "read only" = "no";
        "force group" = "tank_public";
        comment = "public share";
      };
    };
    # this is hot garbage why is this not structured x_x good lord someone
    # needs to give this module some love.
    extraConfig = ''
      # log to journald
      logging = systemd
      log level = 3

      # we dont do legacy here
      server min protocol = SMB3_00

      guest account = smbguest
      # if the evil bit is set,,, but i think this applies to when windows
      # tries to auth as a user that doesn't exist.
      map to guest = bad user

      # make fruity devices work properly (hi im a fruity device...???)
      vfs objects = fruit streams_xattr
      # we have the zettabyte filesystem, why not
      fruit:resource = xattr
    '';
  };

  age.secrets.acme-dns-reg.file = ../../secrets/acme-dns-reg.age;

  services.jellyfin = {
    enable = true;
  };
  # accelerate video encode/decode
  hardware.opengl.extraPackages = with pkgs; [ intel-media-driver ];

  networking.firewall.allowedTCPPorts = [ 443 ];
  services.caddy = {
    enable = true;
    acmeCA = "https://acme-staging-v02.api.letsencrypt.org/directory";
    email = base64.decode "YWNtZUBsZmNvZGUuY2E=";
  };

  jade.caddy-wildcard = {
    enable = true;
    dnsRegistrationPath = config.age.secrets.acme-dns-reg.path;
    wildcardCertDomain = "*.h.jade.fyi";
    hosts = {
      "foo.h.jade.fyi" = ''
        respond "Foo!"
      '';
      "bar.h.jade.fyi" = ''
        respond "Foo!"
      '';
    };
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
