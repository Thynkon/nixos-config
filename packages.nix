{ pkgs, ... }:

{
	# List packages installed in system profile. To search, run:
	# $ nix search wget
	environment.systemPackages = with pkgs; [
		vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
		wget
		firefox

		unzip

		# utilities
		#dconf-editor
		btrfs-progs
		dmenu
		dosfstools
		e2fsprogs
		exfat-utils
		jq
		lsof
		ntfs3g
		tree
		udiskie

		# network
		bind # nslookup
		curl
		inetutils # hostname
		iproute2
		# SOMEHOW DOES NOT WORK => network-manager-applet
		networkmanager
		nmap
		wget

		# fonts
		cantarell-fonts
		dejavu_fonts
		font-awesome
		hack-font
		hermit
		iosevka
		liberation_ttf
		meslo-lgs-nf
		noto-fonts
		roboto
		roboto-mono
		tamsyn
		terminus_font
		ttf_bitstream_vera
		ubuntu_font_family

		python3Full
		python39Packages.pip
		python39Packages.setuptools

		brightnessctl

		# programming languages
		php80
		gcc
		gnumake

		killall
	];
}
