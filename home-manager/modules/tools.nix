{ lib, pkgs, ... }:
{
  programs = {
    bat = {
      enable = true;
    };
    jq = {
      enable = true;
    };
    ripgrep = {
      enable = true;
    };
    zoxide = {
      enable = true;
    };
    fd = {
      enable = true;
    };
    fzf = {
      enable = true;
    };
    lsd = {
      enable = true;
    };
  };

  home = {
    packages = with pkgs; [
      dust
      ghostscript
      hexyl
      just
      lsof
      mermaid-cli
      qbittorrent
      tree
      wev
      wl-clipboard
    ];
  };
}
