{ config, pkgs, ... }:

{
        imports = [
                ./c.nix
                ./java.nix
                ./javascript.nix
                ./php.nix
                ./python.nix
                ./database.nix
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
                        rustup
                        staruml
                ];
        };
}
