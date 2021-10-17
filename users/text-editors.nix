{ config, pkgs, ... }:

{
	# Define a user account. Don't forget to set a password with ‘passwd’.
	users.users.thynkon = {
		packages = with pkgs; [
			## text editors
			# lsp server
			sumneko-lua-language-server
			joplin-desktop
			neovim
			vscodium

			# lsp servers
			#nodejs-intelephense
			#sql-language-server
			#vscode-json-languageserver

			# lsp servers
			#bash-language-server
			gopls
			python-language-server
			rust-analyzer
			texlab
			#vscode-css-languageserver
			#vscode-html-languageserver

			jetbrains.phpstorm
			neovim
		];
	};
}
