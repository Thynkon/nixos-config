{ config, pkgs, lib, ... }:

{

  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
    "Oracle_VM_VirtualBox_Extension_Pack"
    "android-studio-stable"
    "discord"
    "phpstorm"
    "teams"
  ];
}
