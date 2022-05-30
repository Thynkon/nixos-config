{ config, pkgs, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.thynkon = {
    packages = with pkgs; [
      # desktop environment
      ###lightdm-webkit-theme-aether
      ###sweet-cursor-theme
      ##candy-icons
      #lightdm
      #sweet-gtk-theme-dark
      #thunar-archive-plugin
      #xorg
      alacritty
      android-file-transfer # android file transfer
      arandr
      bspwm
      dunst
      feh
      gnome.gnome-keyring
      gnome.seahorse
      gtk-engine-murrine
      lxappearance
      lxrandr
      networkmanagerapplet
      numlockx
      picom
      polkit_gnome
      polybar
      redshift
      safeeyes
      sxhkd
      wmname # fix java-based applications display problems
      xfce.thunar
      xfce.xfconf # save thunar settings
      xfce.thunar-volman
      xfce.xfce4-notifyd
      xfce.xfce4-power-manager
      xfce.xfce4-settings
    ];
  };
}
