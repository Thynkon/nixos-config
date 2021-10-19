{ config, pkgs, ... }:

{
	# Define a user account. Don't forget to set a password with ‘passwd’.
	users.users.thynkon = {
		packages = with pkgs; [
			tree-sitter
			## text editors
			# lsp server
			sumneko-lua-language-server
			joplin-desktop
			neovim
			vscodium

			# lsp servers
			#nodejs-intelephense
			#sql-language-server
			nodePackages.vscode-json-languageserver

			# lsp servers
			nodePackages.bash-language-server
			gopls
			python-language-server
			rust-analyzer
			texlab
			nodePackages.vscode-css-languageserver-bin
			nodePackages.vscode-html-languageserver-bin

			jetbrains.phpstorm
			neovim-nightly
			python39Packages.pynvim
		];
	};
}