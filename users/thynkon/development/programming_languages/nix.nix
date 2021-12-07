{ pkgs, config, ... }:
{
	# Define a user account. Don't forget to set a password with ‘passwd’.
	users.users.thynkon = {
		packages = with pkgs; [
                        rnix-lsp
                        nixpkgs-fmt
		];
	};
}
