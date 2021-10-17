{ config, pkgs, ... }:

{
	# Define a user account. Don't forget to set a password with ‘passwd’.
	users.users.thynkon = {
		packages = with pkgs; [
			# desktop environment
			alacritty
			arandr
			bspwm
			dunst
			feh
			gnome.gnome_keyring
			gtk-engine-murrine
			android-file-transfer # android file transfer
			#lightdm
			networkmanagerapplet
			lxappearance
			lxrandr
			numlockx
			picom
			polkit_gnome
			redshift
			gnome.seahorse
			#sweet-gtk-theme-dark
			sxhkd
			xfce.thunar
			#thunar-archive-plugin
			xfce.thunar-volman
			wmname # fix java-based applications display problems
			xfce.xfce4-notifyd
			xfce.xfce4-power-manager
			xfce.xfce4-settings
			#xorg
			##candy-icons
			###sweet-cursor-theme
			###lightdm-webkit-theme-aether
			polybar
			safeeyes
		];
	};
}
