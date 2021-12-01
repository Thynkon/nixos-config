{ config, pkgs, lib, ... }:

{

    nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
        "android-studio-stable"
        "discord"
        "phpstorm"
        "staruml"
        "symfony-cli"
        "teams"
    ];
}
