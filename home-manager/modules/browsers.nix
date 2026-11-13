{ lib, pkgs, ... }:
{
  services = {
    nextcloud-client = {
      enable = true;
    };
  };
  programs = {
    zen-browser = {
      enable = true;
      setAsDefaultBrowser = true;
      policies =
        let
          mkExtensionSettings = builtins.mapAttrs (
            _: pluginId: {
              install_url = "https://addons.mozilla.org/firefox/downloads/latest/${pluginId}/latest.xpi";
              installation_mode = "force_installed";
            }
          );
        in
        {
          ExtensionSettings = mkExtensionSettings {
            "{446900e4-71c2-419f-a6a7-df9c091e268b}" = "bitwarden-password-manager";
          };
        };
    };

  };
  # programs.chromium = {
  #   enable = true;
  #   package = pkgs.brave;
  #   extensions = [
  #     #   { id = "cjpalhdlnbpafiamejdnhcphjbkeiagm"; } # ublock origin
  #   ];
  #   commandLineArgs = [
  #     "--disable-features=WebRtcAllowInputVolumeAdjustment"
  #   ];
  # };

  programs.librewolf = {
    enable = true;
    # Enable WebGL, cookies and history
    settings = {
      "webgl.disabled" = false;
      "privacy.resistFingerprinting" = false;
      "privacy.clearOnShutdown.history" = false;
      "privacy.clearOnShutdown.cookies" = false;
      "network.cookie.lifetimePolicy" = 0;
    };
  };

  home = {
    packages = with pkgs; [
    ];
  };

  xdg.mimeApps = {
    enable = true;
    defaultApplications = {
      "text/html" = "zen-twilight.desktop";
      "x-scheme-handler/http" = "zen-twilight.desktop";
      "x-scheme-handler/https" = "zen-twilight.desktop";
      "x-scheme-handler/about" = "zen-twilight.desktop";
      "x-scheme-handler/unknown" = "zen-twilight.desktop";
    };
  };
}
