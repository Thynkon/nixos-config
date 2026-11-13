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
      beam29Packages.elixir_1_20
      beam29Packages.erlang
      gitui
      hoppscotch
      inotify-tools
      #nodejs_26
      nodejs
      php
      php84Packages.composer
      #pipx
      python313
      python313Packages.pip
      ruby_4_0
      sqlite
      temurin-bin
    ];
  };
}
