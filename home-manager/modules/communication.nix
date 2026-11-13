{
  lib,
  pkgs,
  inputs,
  ...
}:
{
  services = {
    nextcloud-client = {
      enable = true;
    };
  };

  home = {
    packages = with pkgs; [
      signal-desktop
      inputs.nixpkgs-stable.legacyPackages.${pkgs.stdenv.hostPlatform.system}.telegram-desktop
      webcord
    ];
  };
}
