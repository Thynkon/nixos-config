{ config, pkgs, ... }:

let
  unstable = import <nixos-unstable> { };
in
{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.thynkon = {
    packages = with pkgs; [
      ## text editors
      #nodejs-intelephense
      joplin-desktop
      unstable.vscodium
      xournalpp
    ];
  };
}
