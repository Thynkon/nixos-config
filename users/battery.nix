{ config, pkgs, ... }:

{
	# Define a user account. Don't forget to set a password with ‘passwd’.
	users.users.thynkon = {
		packages = with pkgs; [
			# battery
			powertop
			tlp
			#tlp-rdw
		];
	};
}
