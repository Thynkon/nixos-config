{ pkgs, config, ... }:

let
  unstable = import <nixos-unstable> { };
  stable = import <nixos> { };

in
{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.thynkon = {
    packages = with pkgs; [
      dbeaver
      mariadb
      mariadb-client
      mongodb-tools
      libbson # ruby 
      sqlite
      # mongodb
      # mysql-workbench
    ];
  };


  services.mysql.enable = true;
  services.mongodb = {
    package = pkgs.mongodb;
    enable = true;
    dbpath = "/var/db/mongodb";
  };
  services.mysql.package = pkgs.mariadb;
}
