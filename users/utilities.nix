{ config, pkgs, ... }:

{
	# Define a user account. Don't forget to set a password with ‘passwd’.
	users.users.thynkon = {
		packages = with pkgs; [
			# utilities
			#cronie
			#grub-customizer
			android-file-transfer
			bat
			chezmoi
			ctags
			du-dust
			fd
			flameshot
			fzf
			htop
			lsd
			neofetch
			peek
			qbittorrent
			ripgrep
			rofi
			sharutils
			uudeview
			vifm-full
			xsel
			zoxide
		];
	};
}
