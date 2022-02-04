{ config, lib, pkgs, ... }: with lib;
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

      awesome = {
        enable = true;
        luaModules = with pkgs.luaPackages; [
          luarocks # is the package manager for Lua modules
          luadbi-mysql # Database abstraction layer
        ];
      };
    };

    displayManager = {
      lightdm = {
        enable = true;
      };
      defaultSession = "none+awesome";
    };
  };

  services.gnome.gnome-keyring.enable = true;
}
