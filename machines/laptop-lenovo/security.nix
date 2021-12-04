{ config, pkgs, lib, ... }:

{
        services.fprintd.enable = true;
        services.fwupd.enable = true;
        security.pam.services.login.fprintAuth = true;
        security.pam.services.xscreensaver.fprintAuth = true;
}
