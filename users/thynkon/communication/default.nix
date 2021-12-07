{ config, pkgs, ... }:

{
        # Define a user account. Don't forget to set a password with ‘passwd’.
        users.users.thynkon = {
                packages = with pkgs; [
                        discord
                        element-desktop
                        newsflash
                        signal-desktop
                        tdesktop # telegram
                        teams
                        protonmail-bridge
                ];
        };
}
