{ pkgs, config, ... }:
{
        users.users.thynkon = {
                extraGroups = [ "plugdev" ];
        };
        # Add ergodox ez udev rules.
        hardware.keyboard.zsa.enable = true;

        # Even tought the option above is enabled, ergodox ez live
        # train does not detect the keyboard. I had to get the keyboard idVendor and idProduct
        # from 'lsusb -v'.
        services.udev.extraRules = ''
                SUBSYSTEM=="usb", ATTR{idVendor}=="3297", ATTR{idProduct}=="4975", GROUP="plugdev"'';
}
