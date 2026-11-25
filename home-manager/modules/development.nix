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
      beam29Packages.elixir_1_20
      beam29Packages.erlang
      gitui
      hoppscotch
      inotify-tools
      nixd
      nodejs_26
      python313
      python313Packages.pip
      ruby_4_0
      sqlite
      temurin-bin
    ];
  };
}
