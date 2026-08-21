{
  config,
  pkgs,
  inputs,
  ...
}:

{
  # Enable the X11 windowing system.
  # You can disable this if you're only using the Wayland session.
  services.xserver.enable = true;

  # Enable the KDE Plasma Desktop Environment.
  services.displayManager.sddm.enable = true;

  programs.hyprland = {
    enable = true;
    withUWSM = true; # recommended for most users
    xwayland.enable = true; # Xwayland can be disabled.
  };
  #  wayland.windowManager.hyprland.plugins = [
  #pkgs.hyprlandPlugins.split-monitor-workspaces
  #];

  programs.silentSDDM = {
    enable = true;
    theme = "default"; # ou "default", "ken", "silvia", "everforest", "catppuccin-mocha", etc.
  };

#  xdg.mimeApps = {
#    enable = true;
#    defaultApplications = {
#      "text/html" = "zen-twilight.desktop";
#      "x-scheme-handler/http" = "zen-twilight.desktop";
#      "x-scheme-handler/https" = "zen-twilight.desktop";
#      "x-scheme-handler/about" = "zen-twilight.desktop";
#      "x-scheme-handler/unknown" = "zen-twilight.desktop";
#    };
#  };
}
