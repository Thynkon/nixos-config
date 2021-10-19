{ config, pkgs, ... }:

{
	imports = [
		./c.nix
		./java.nix
		./javascript.nix
		./php.nix
		./python.nix
		./database.nix
	];

	users.users.thynkon = {
		packages = with pkgs; [
			gitflow
			gitg # gnome git client
			go
			jq
			luarocks
			nginx
			ruby
			rustup
		];
	};
}
