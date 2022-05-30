{ pkgs, config, ... }:

let
  unstable = import <nixos-unstable> { };
in
{
  users.users.thynkon = {
    packages = with pkgs; [
      bundix
      rubyPackages_3_1.mysql2
      rubyPackages_3_1.rails
      rubyPackages_3_1.sqlite3
      rubyPackages_3_1.solargraph
      rubyPackages_3_1.rspec-core
    ];
  };
}
