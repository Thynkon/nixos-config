{ config, pkgs, lib, ... }:

{
  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
    "android-stable"
    "burpsuite"
    "discord"
    "mwprocapture"
    "steam"
    "steam-original"
    "steam-runtime"
    "teams"
  ];
}
