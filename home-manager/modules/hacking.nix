{ lib, pkgs, ... }:
{
  home = {
    packages = with pkgs; [
      autopsy
      #exegol
    ];
  };
}
