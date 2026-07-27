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

  programs.silentSDDM = {
    enable = true;
    theme = "default"; # ou "default", "ken", "silvia", "everforest", "catppuccin-mocha", etc.
  };
}
