{ pkgs, config, ... }:
{
  environment.systemPackages = [
    pkgs.atuin
  ];
  services.atuin = {
    enable = true;
    openFirewall = false;
    openRegistration = false;
    # unlimited
    maxHistoryLength = 0;
    host = "0.0.0.0";
  };

  jade.tailscale.allowedTCPPorts = [ 8888 ];

  # n.b. uses postgres! unannounced!!
}
