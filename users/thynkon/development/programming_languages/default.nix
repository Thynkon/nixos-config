{ config, pkgs, ... }:

{
        imports = [
                ./c.nix
                ./java.nix
                ./javascript.nix
                ./lua.nix
                ./php.nix
                ./python.nix
                ./ruby.nix
                ./nix.nix
        ];
}
