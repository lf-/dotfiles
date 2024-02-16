{ ... }:
{
  security.tpm2 = {
    enable = true;
    abrmd.enable = true;
  };

  users.users.jade.extraGroups = [ "tss" ];
}
