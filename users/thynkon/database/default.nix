{ pkgs, config, ... }:

let
        unstable = import <nixos-unstable> {};

        in
{
	# Define a user account. Don't forget to set a password with ‘passwd’.
	users.users.thynkon = {
		packages = with pkgs; [
			dbeaver
			mariadb
			mariadb-client
                        mongodb
#			mysql-workbench
		];
	};

	services.mysql.enable = true;
	services.mongodb.enable = true;
	services.mysql.package = pkgs.mariadb;
}
