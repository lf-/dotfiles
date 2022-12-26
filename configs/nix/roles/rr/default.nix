{ pkgs, lib, ... }:
{
  boot.kernel.sysctl."kernel.perf_event_paranoid" = "1";
  environment.systemPackages = [
    pkgs.rr
  ];
}
