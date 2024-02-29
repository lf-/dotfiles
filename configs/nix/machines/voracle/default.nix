let
  creds = import ../../lib/creds.nix;
in
{ config, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ../../roles/base
    ../../roles/dev
    ../../roles/linux
    ../../roles/atuin
    ../../roles/tailscale
    ../../roles/webdav
    ../../roles/users
    ../../roles/autobackup-source
    ./hedgedoc.nix
    ./opengist.nix
    ../../modules/caddy-wildcard.nix
  ];

  jade.dev.withHsutils = false;

  services.caddy = {
    enable = true;
    # acmeCA = "https://acme-staging-v02.api.letsencrypt.org/directory";
    email = creds.data.acmeEmail;
    globalConfig = ''
      log acme {
        output stdout
        format json
        level DEBUG
        include tls.issuance.zerossl.acme_client
      }
    '';
  };
  age.secrets.acme-dns-reg.file = ../../secrets/acme-dns-reg-voracle.age;
  jade.caddy-wildcard = {
    enable = true;
    dnsRegistrationPath = config.age.secrets.acme-dns-reg.path;
    wildcardCertDomain = "*.jade.fyi";
  };

  boot.supportedFilesystems = [ "zfs" ];
  networking.hostId = "4b247ece";
  boot.zfs.extraPools = [ "zdata" ];

  # the scripted networking is so severely broken that it has tailscale eating
  # TXT requests. stop this madness.
  networking.useNetworkd = true;

  nixpkgs.system = "aarch64-linux";

  jade.rootSshKeys.enable = true;

  users.users = {
    hexchen = {
      isNormalUser = true;
      openssh.authorizedKeys.keys = creds.hexchen.sshKeys;
    };

    lunaphied = {
      description = "Lunaphied";
      isNormalUser = true;
      openssh.authorizedKeys.keys = creds.lunaphied.sshKeys;
    };
  };

  systemd.tmpfiles.rules = [
    "d /home/shared 0770 root users"
  ];

  i18n.defaultLocale = "en_US.UTF-8";

  networking.firewall.allowedTCPPorts = [ 80 443 ];
  networking.firewall.allowedUDPPorts = [ 443 ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.systemd-boot.configurationLimit = 2;

  networking.hostName = "voracle";

  # allow nat from tailscale
  networking.nat.internalInterfaces = [ "tailscale0" ];

  system.stateVersion = "22.11";
}
