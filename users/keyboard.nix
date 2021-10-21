{ pkgs, config, ... }:
{
        users.users.thynkon = {
                extraGroups = [ "plugdev" ];
        };
        hardware.keyboard.zsa.enable = true;
}
