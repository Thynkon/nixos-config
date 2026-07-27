{ lib, pkgs, ... }:
{
  home = {
    packages = with pkgs; [
      dig
      tcpdump
      wireguard-tools
    ];
  };
}
