{ lib, pkgs, ... }:
{
  services = {
    nextcloud-client = {
      enable = true;
    };
  };
  programs = {
    k9s = {
      enable = true;
    };
    go = {
      enable = true;
    };
    lazygit = {
      enable = true;
    };

  };
  home = {
    packages = with pkgs; [
      # erlang observer
      #wxwidgets
      beamPackages.elixir
      beamPackages.erlang
      hoppscotch
      nodejs_26
      php
      php84Packages.composer
      python313
      python313Packages.pip
      ruby_4_0
      sqlite
      temurin-bin
    ];
  };
}
