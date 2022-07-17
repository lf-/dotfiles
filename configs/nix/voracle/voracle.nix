{ sysType ? "hyperv" }:
{
  network.description = "voracles ur sun!";
  network.enableRollback = true;
  voracle = { pkgs, ... }: {
    imports = [ ./system.nix ];

    deployment = {
      targetHost = "voracle";
      targetEnv = "none";
      provisionSSHKey = false;
      hasFastConnection = false;
    };
  };
}
