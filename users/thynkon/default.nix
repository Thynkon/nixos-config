{ config, pkgs, ... }:

{
        imports =
                [ # Include the results of the hardware scan.
                ../../wm/bspwm.nix
                ../../wm/awesome.nix
                ./utilities
                ./multimedia
                ./printers
                ./desktop-environment
                ./cloud
                ./keyboard
                ./network-discovery
                ./documents
                ./communication
                ./browsers
                ./sound
                ./shells
                ./email
                ./text-editors
                ./battery
                ./development
                ./virtualization
        ];

        # Define a user account. Don't forget to set a password with ‘passwd’.
        users.users.thynkon = {
                isNormalUser = true;
                extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
                        shell = pkgs.zsh;
        };

        powerManagement.powertop.enable = true;
}
