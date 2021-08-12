{}:
{
  # mostly from
  # https://git.sr.ht/~rj/digitalocean-image
  digitalOceanImage =
    let
      sources = import ./nix/sources.nix;
      pkgs = import sources.nixpkgs { };
      creds = import ./lib/creds.nix;
      config = {
        imports =
          [ (pkgs.path + "/nixos/modules/virtualisation/digital-ocean-image.nix") ];

        # Headless - don't start a tty on the serial consoles.
        systemd.services."serial-getty@ttyS0".enable = false;
        systemd.services."serial-getty@hvc0".enable = false;
        systemd.services."getty@tty1".enable = false;
        systemd.services."autovt@".enable = false;

        users.users.jade = {
          isNormalUser = true;
          extraGroups = [ "wheel" ];
          openssh.authorizedKeys.keys = creds.jade.sshKeys;
        };

        users.users.root = {
          openssh.authorizedKeys.keys = creds.jade.sshKeys;
        };

        # Make sure that SSH is available
        networking.firewall.allowedTCPPorts = [ 22 ];
        services.sshd.enable = true;

        # Use more aggressive compression then the default.
        virtualisation.digitalOceanImage.compressionMethod = "bzip2";
      };
    in
    (pkgs.nixos config).digitalOceanImage;
}
