{ config, pkgs, ... }:

{
	# Define a user account. Don't forget to set a password with ‘passwd’.
	users.users.thynkon = {
		packages = with pkgs; [
			# battery
			powertop
			tlp
			#tlp-rdw
		];
	};

        # Reference: https://discourse.nixos.org/t/thinkpad-t470s-power-management/8141/4
        services.tlp = {
                enable = true;
                settings = {
                        "CPU_SCALING_GOVERNOR_ON_AC" = "performance";
                        "CPU_SCALING_GOVERNOR_ON_BAT" = "powersave";
                        # Runtime Power Management for PCI(e) bus devices: on=disable, auto=enable.
                        # Default: on (AC), auto (BAT)
                        "RUNTIME_PM_ON_AC" = "on";
                        "RUNTIME_PM_ON_BAT" = "auto";

                };
        };

        boot.initrd.availableKernelModules = [
                # trimmed irrelevant ones
                "thinkpad_acpi"
        ];
        services.upower.enable = true;
}
