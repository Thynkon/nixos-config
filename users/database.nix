{ pkgs, config, ... }:
{
	# Define a user account. Don't forget to set a password with ‘passwd’.
	users.users.thynkon = {
		packages = with pkgs; [
			dbeaver
			mariadb
			mariadb-client
			mysql-workbench
		];
	};

	services.mysql.enable = true;
	services.mysql.package = pkgs.mariadb;
}
