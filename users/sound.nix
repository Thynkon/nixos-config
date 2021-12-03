{ config, pkgs, ... }:

{
	# Define a user account. Don't forget to set a password with ‘passwd’.
	users.users.thynkon = {
		packages = with pkgs; [
			# SOUND
			pavucontrol
			playerctl
		];
	};

        hardware.openrazer.enable = true;
        users.users.thynkon.extraGroups = [ "plugdev" ];
}
