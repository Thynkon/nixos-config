{ config, pkgs, ... }:

{
	# Define a user account. Don't forget to set a password with ‘passwd’.
	users.users.thynkon = {
		packages = with pkgs; [
			#android-tools
			android-studio
			#gcc
			#php80-cgi
			#php80-fpm
			#python
			#python-pip
			clang
			cmake
			dbeaver
			deno
			gitg # gnome git client
			go
			jdk11
			jq
			luarocks
			mariadb
			mariadb-client
			maven
			nginx
			nginx
			nodePackages.npm
			nodejs
			php80
			php80Packages.composer
			ruby
			rustup
			valgrind
			yarn
		];
	};
}
