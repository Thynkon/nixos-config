{ pkgs, config, ... }:
{
	# Define a user account. Don't forget to set a password with ‘passwd’.
	users.users.thynkon = {
		packages = with pkgs; [
			deno
			nodePackages.npm
			nodejs
			yarn
		];
	};
}
