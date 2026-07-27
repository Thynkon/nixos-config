{
  lib,
  pkgs,
  config,
  ...
}:
{
  imports = [
    ./modules
  ];
  fonts.fontconfig.enable = true;
  programs = {
    starship = {
      enable = true;
      enableFishIntegration = true;
    };
    fish = {
      enable = true;
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
      hello
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

  home.activation.chezmoi = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
    # echo -e "\033[0;34mActivating chezmoi"
    # echo -e "\033[0;34m=================="
    ${pkgs.chezmoi}/bin/chezmoi apply --destination ${config.home.homeDirectory}/dotfiles/
    # echo -e "\033[0;34m=================="
  '';
}
