{ config, pkgs, lib, ... }:

{
    # trackpoint support
    hardware.trackpoint.enable = true;
    hardware.trackpoint.emulateWheel = true;
}
