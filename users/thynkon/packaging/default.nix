{ config, pkgs, ... }:

{
  services.flatpak.enable = true;
  xdg.portal.enable = true;
}
