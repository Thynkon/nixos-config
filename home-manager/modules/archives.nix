{ lib, pkgs, ... }:
{
  programs = {
  };
  home = {
    packages = with pkgs; [
      p7zip
      unzip
      xarchiver
      zip
    ];
  };
}
