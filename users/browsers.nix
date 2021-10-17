{ config, pkgs, ... }:

{
	# Define a user account. Don't forget to set a password with ‘passwd’.
	users.users.thynkon = {
		packages = with pkgs; [
			# browser
			# DISABLE ONLY FOR NOW !!!! firefox-devedition-bin-unwrapped
			brave
		];
	};
}
