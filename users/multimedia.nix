{ config, pkgs, ... }:

{
	# Define a user account. Don't forget to set a password with ‘passwd’.
	users.users.thynkon = {
		packages = with pkgs; [
			# multimedia
			gimp
			imagemagick
			inkscape
			nomacs
			vlc
		];
	};
}
