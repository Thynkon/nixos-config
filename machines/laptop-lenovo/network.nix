{ config, pkgs, ... }:

{
  networking = {
    interfaces.wlp0s20f3.useDHCP = true;
    enableIPv6 = false;
  };
}
