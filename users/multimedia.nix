{ config, pkgs, ... }:

{
	# Define a user account. Don't forget to set a password with ‘passwd’.
	users.users.thynkon = {
		packages = with pkgs; [
			gimp
			imagemagick
			inkscape
			nomacs
			vlc
		];
	};
}
