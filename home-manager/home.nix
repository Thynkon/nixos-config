{
  inputs,
  lib,
  pkgs,
  config,
  ...
}:
{
  imports = [
    ./modules
    inputs.nix-index-database.homeModules.nix-index
  ];
  fonts.fontconfig.enable = true;
  programs = {
    starship = {
      enable = true;
      enableFishIntegration = true;
    };
    fish = {
      enable = true;
      plugins = [
        {
          name = "grc";
          src = pkgs.fishPlugins.grc.src;
        }
        {
          name = "fzf-fish";
          src = pkgs.fishPlugins.fzf-fish.src;
        }
      ];
      # interactiveShellInit = ''
      #   source ${pkgs.nix-index}/etc/profile.d/command-not-found.fish
      # '';
    };
    kitty = {
      enable = true;
      shellIntegration.enableFishIntegration = true;
    };
    lsd = {
      enable = true;
      enableFishIntegration = true;
    };
    zellij = {
      enable = true;
    };
  };
  home = {
    # sessionVariables = {
    # STARSHIP_CONFIG = "$HOME/.config/starship/config.toml";
    # };
    packages = with pkgs; [
      grc
      gnumake
      gcc
      statix
      nerd-fonts.monaspace
      (pkgs.fenix.stable.withComponents [
        "cargo"
        "clippy"
        "rust-src"
        "rustc"
        "rustfmt"
        "rust-analyzer"
      ])
      chezmoi
    ];

    username = "thynkon";
    homeDirectory = "/home/thynkon";

    stateVersion = "26.05";
  };

  #home.activation.chezmoi = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
  # echo -e "\033[0;34mActivating chezmoi"
  # echo -e "\033[0;34m=================="
  #  ${pkgs.chezmoi}/bin/chezmoi apply --destination ${config.home.homeDirectory}/dotfiles/
  # echo -e "\033[0;34m=================="
  #'';

  programs.nix-index.enable = true;
  programs.nix-index-database.comma.enable = true;
}
