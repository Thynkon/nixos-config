{ config, pkgs, ... }:

let
  unstable = import <nixos-unstable> { config = { allowUnfree = true; }; };
in
{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.thynkon = {
    packages = with pkgs; [
      unstable.brave
      unstable.firefox-devedition-bin
    ];
  };
}
