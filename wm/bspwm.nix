{ config, lib, pkgs, ...}: with lib;
{
	services.xserver = {
		# Enable the X11 windowing system.
		enable = true;
		layout = "ch";
		xkbVariant = "fr";
		xkbOptions = "eurosign:e";
		windowManager = {
			bspwm = {
				enable = true;
			};
		};

		displayManager = {
			lightdm = {
				enable = true;
			};
			defaultSession = "none+bspwm";
		};
	};
}

