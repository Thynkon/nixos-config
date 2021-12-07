{ pkgs, config, ... }:

{
	users.users.thynkon = {
                packages = with pkgs; [
                        nodePackages.lua-fmt
                ];
        };
}
