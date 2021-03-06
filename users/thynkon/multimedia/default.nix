{ config, pkgs, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.thynkon = {
    packages = with pkgs; [
      gimp
      imagemagick
      inkscape
      kdenlive
      nomacs
      poppler_utils # pdf to png
      vlc
    ];
  };
}
