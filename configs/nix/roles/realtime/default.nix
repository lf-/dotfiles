{ ... }:
{
  users.groups.realtime = {};
  users.users.jade.extraGroups = [ "realtime" ];

  security.pam.loginLimits = [
    { domain = "@realtime"; type = "-"; item = "rtprio"; value = "99"; }
    { domain = "@realtime"; type = "-"; item = "memlock"; value = "unlimited"; }
    { domain = "@realtime"; type = "-"; item = "nice"; value = "-11"; }
  ];
}
