let inherit (import ./carnap.nix) machine;
  sshKeys = [ "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDPWTDqLxdFhYblWDNXUTkP8ElDSDeIOO8CZOhflnegU54o0ic2PlvtXya7kWNtitmo7XPxE2xRsVUmrI+03CyXs9ZPBXLN5OVzO2cLs46f1RKWn+h4lsPFzN660amQ9qNCuqyCy9fis8lDkm7t61Jxe9TikSii3HVfS4E2f/m4GxPT6aL5ZsA3390CYxjOhvQBUKj9aAU3K1pfaQeWTf/WJ+ez6iNxWJ3G5Cw9wk7zF0Tl38rZ2vHmcLZq11XzdDbZz1/cbUAw3CeJFdDQ+BMrzUoBQfGNQgXPZ68SXRjmsc0YFFo7FnEaF7/ZEXroq1rX2EcDoQ8s5qpJu5gWC5Rz lf@Calculon" ];
  sources = import ../nix/sources.nix;
in
{ sysType ? "hyperv" }:
{
  network.description = "voracles ur sun!";
  network.enableRollback = true;
  voracle = { pkgs, ... }: {
    imports = [ ./hardware-configuration.nix ];

    nixpkgs.system = "aarch64-linux";

    users.users.jade = {
      isNormalUser = true;
      extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
      openssh.authorizedKeys.keys = sshKeys;
    };

    users.users.root = {
      openssh.authorizedKeys.keys = sshKeys;
      # this is a hashed long random pw only used here. chill
      hashedPassword = "$6$xdA/r73m$B66acdvSeL/ZnkoXb0Tgb1GF0AaVeHiOXA8xyOHZ59hJDmTPQfyFZVMqeloP0y4Y.KyX1RUtsW3SUu5ECImiu/";
    };

    services.openssh.enable = true;
    services.openssh.passwordAuthentication = false;
    networking.firewall.allowedTCPPorts = [ 80 443 ];

    security.sudo.wheelNeedsPassword = false;

    documentation.enable = true;

    nixpkgs.overlays = [
      (import ../overlays/polkadots.nix { inherit (sources) polkadots; })
    ];

    environment.systemPackages =
      with (import ../packages.nix { inherit pkgs; });
      builtins.concatLists [ base dev ];

    deployment = {
      targetHost = "voracle";
      targetEnv = "none";
      provisionSSHKey = false;
      hasFastConnection = false;
    };
  };
}
