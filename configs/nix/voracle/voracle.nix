let
  inherit (import ./carnap.nix) machine;
  sources = import ../nix/sources.nix;
  creds = import ../lib/creds.nix;
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
      openssh.authorizedKeys.keys = creds.jade.sshKeys;
      shell = pkgs.zsh;
    };

    users.users.root = {
      openssh.authorizedKeys.keys = creds.jade.sshKeys;
    };

    users.users.hexchen = {
      isNormalUser = true;
      openssh.authorizedKeys.keys = creds.hexchen.sshKeys;
    };

    users.users.iris = {
      isNormalUser = true;
      openssh.authorizedKeys.keys = creds.iris.sshKeys;
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
