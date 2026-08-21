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
    sessionVariables = {
      EDITOR = "nvim";
      VISUAL = "nvim";
    };
    packages = with pkgs; [
      rubyPackages.erb-formatter
      luarocks
      markdown-toc
      nixfmt
      prettier
      rubocop
      sqlfluff
    ];
  };
}
