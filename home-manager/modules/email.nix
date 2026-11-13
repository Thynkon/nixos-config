{ lib, pkgs, ... }:
{
  services = {
    protonmail-bridge = {
      enable = true;
    };
  };
  programs = {
    #thunderbird = {
    #  enable = true;
    #};

  };

  home = {
    packages = with pkgs; [
      protonmail-desktop
    ];
  };
}
