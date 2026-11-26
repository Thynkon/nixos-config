{
  lib,
  pkgs,
  config,
  ...
}:
{
  services = {
    gnome-keyring = {
      enable = true;
    };
    hyprpolkitagent = {
      enable = true;
    };

    swaync = {
      enable = true;
    };
    wpaperd = {
      enable = true;
    };
  };
  programs = {
    waybar = {
      enable = true;
    };
    yazi = {
      enable = true;
    };
    zellij = {
      enable = true;
    };

  };

  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = true;
    # the hyprland home-manager module adds its own config file into your configHome
    # usually you would write hyprland config into extraConfig or use the nix abstraction to define options.
    # Instead I use a separate config file/dir which I source inside the home-manager created config:
    extraConfig = ''
      require("monitors") -- nwg-displays
      require("config.hyprland")
    '';
  };
  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-gtk
      xdg-desktop-portal-hyprland
    ];
    config = {
      hyprland = {
        default = [
          "hyprland"
          "gtk"
        ];
        "org.freedesktop.impl.portal.Secret" = [ "gnome-keyring" ];
      };
    };
  };

  gtk = {
    enable = true;
    theme = {
      package = pkgs.orchis-theme.override {
        tweaks = [ "black" ];
      };
      name = "Orchis-Dark";
    };
    iconTheme = {
      package = pkgs.papirus-icon-theme;
      name = "Papirus-Dark";
    };
  };
  home.sessionVariables = {
    GTK_THEME = "Orchis-Dark";
  };
  dconf = {
    enable = true;
    settings = {
      "org/gnome/desktop/interface" = {
        color-scheme = "prefer-dark";
        gtk-theme = "Orchis-Dark";
      };
    };
  };
  # my actual config dir for hyprland is linked via mkOutOfStoreSymlink from my dotfiles dir into the hyprland configHome:
  xdg.configFile."hypr/config" = {
    recursive = true;
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/.config/hypr/";
  };
  home.pointerCursor = {
    enable = true;
    gtk.enable = true;
    x11.enable = true;
    package = pkgs.catppuccin-cursors.mochaBlue;
    name = "catppuccin-mocha-blue-cursors";
    size = 24;
  };

  home = {
    packages = with pkgs; [
      anyrun
      appimage-run
      bitwarden-desktop
      brightnessctl
      ffmpeg
      gcr_4 # Provides org.gnome.keyring.SystemPrompter
      ghostty
      gnome-keyring
      grim
      hyprlock
      hyprpolkitagent
      ledger-live-desktop
      libnotify # notify-send
      libsecret
      monero-gui
      networkmanagerapplet
      nwg-displays
      pavucontrol
      super-productivity
      thunar
      wezterm
      wf-recorder
      xfconf
    ];
  };

  programs.kitty.settings = {
    shell = "${pkgs.fish}/bin/fish";
  };

  services.flameshot = {
    enable = true;
    settings = {
      General = {

        # More settings may be found on the Flameshot Github

        # Save Path
        #savePath = "/home/user/Screenshots";
        # Tray
        disabledTrayIcon = true;
        # Greeting message
        showStartupLaunchMessage = false;
        # Default file extension for screenshots (.png by default)
        saveAsFileExtension = ".png";
        # Desktop notifications
        showDesktopNotification = true;
        # Notification for cancelled screenshot
        showAbortNotification = false;
        # Whether to show the info panel in the center in GUI mode
        showHelp = true;
        # Whether to show the left side button in GUI mode
        showSidePanelButton = true;
        # Whether to enable legacy (pre-xdg-desktop-portal) screenshotting on X11
        useX11LegacyScreenshot = true;
        # Whether to skip display selection prompt (X11-only)
        # captureActiveMonitor = true;
        captureActiveMonitor = false;

        # Color Customization
        uiColor = "#740096";
        contrastUiColor = "#270032";
        drawColor = "#ff0000";
      };
    };
  };

  xfconf = {
    enable = true;
    settings.thunar = {
      "default-view" = "ThunarCompactView";
      "last-view" = "ThunarCompactView";
    };
  };

}
