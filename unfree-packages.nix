{ config, pkgs, lib, ... }:

{
  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
    "android-studio-stable"
    "discord"
    "mwprocapture"
    "phpstorm"
    "staruml"
    "symfony-cli"
    "teams"
  ];
}
