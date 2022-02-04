{ config, pkgs, ... }:

{
  imports = [
    ./programming_languages
  ];

  users.users.thynkon = {
    packages = with pkgs; [
      gitflow
      gitg # gnome git client
      go
      hugo
      jq
      luarocks
      nginx
      qmk # build ergodox ez firmware
      ruby
      staruml
    ];
  };
}
