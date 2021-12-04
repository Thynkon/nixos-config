{ config, pkgs, ... }:

{
        imports = [
                ./c.nix
                ./java.nix
                ./javascript.nix
                ./php.nix
                ./python.nix
        ];
}
