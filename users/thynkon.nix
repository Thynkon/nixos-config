{ config, pkgs, ... }:

{
	imports =
	[ # Include the results of the hardware scan.
		../wm/bspwm.nix
		./utilities.nix
		./multimedia.nix
		./printers.nix
		./desktop-environment.nix
		./cloud.nix
		./network-discovery.nix
		./documents.nix
		./communication.nix
		./browsers.nix
		./sound.nix
		./shells.nix
		./email.nix
		./text-editors.nix
		./battery.nix
		./development.nix
		./virtualization.nix
	];

	# Define a user account. Don't forget to set a password with ‘passwd’.
	users.users.thynkon = {
		isNormalUser = true;
		extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
		packages = with pkgs; [
			#virtualbox
		];
		shell = pkgs.zsh;
	};

	powerManagement.powertop.enable = true;
}