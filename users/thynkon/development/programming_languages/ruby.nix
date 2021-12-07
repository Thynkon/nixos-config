{ pkgs, config, ... }:

let
        unstable = import <nixos-unstable> {};
in {
	users.users.thynkon = {
                packages = with pkgs; [
                        bundix
                        solargraph
                        rubyPackages_3_0.rails
                        rubyPackages_3_0.sqlite3
                        rubyPackages_3_0.mysql2
                ];
        };
}
