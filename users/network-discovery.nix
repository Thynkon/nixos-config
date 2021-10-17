{ config, pkgs, ... }:

{
	# Define a user account. Don't forget to set a password with ‘passwd’.
	users.users.thynkon = {
		packages = with pkgs; [
			# network discovery
			avahi
			nssmdns
			smbnetfs
		];
	};
}
