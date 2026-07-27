{ lib, pkgs, ... }:
{
  services = {
    nextcloud-client = {
      enable = true;
    };
  };
  programs = {
    k9s = {
      enable = true;
    };
    go = {
      enable = true;
    };

  };
  home = {
    packages = with pkgs; [
      kubectl
    ];
  };
}
