{ config, pkgs, ... }:

let
  unstable = import <nixos-unstable> { config = { allowUnfree = true; }; };
in
{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.thynkon = {
    packages = with pkgs; [
      androidStudioPackages.beta
      jdk
      maven
      watchman # file watcher used by react-native
    ];
  };

  programs.java.enable = true;
}
