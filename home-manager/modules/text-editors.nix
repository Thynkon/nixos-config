{ lib, pkgs, ... }:
{
  services = {
  };
  programs = {
    zed-editor = {
      enable = true;
    };
    vscodium = {
      enable = true;
    };

  };
  home = {
    packages = with pkgs; [
      rubyPackages.erb-formatter
      luarocks
      markdown-toc
      neovim
      nixfmt
      prettier
      rubocop
      sqlfluff
    ];
  };
}
