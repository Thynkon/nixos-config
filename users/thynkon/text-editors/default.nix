{ config, pkgs, ... }:

let
        unstable = import <nixos-unstable> { config = { allowUnfree = true; }; };
in {
        # Define a user account. Don't forget to set a password with ‘passwd’.
        users.users.thynkon = {
                packages = with pkgs; [
                        ## text editors
                        #nodejs-intelephense
                        #sql-language-server
                        cmake-language-server
                        gopls # go lsp server
                        jetbrains.phpstorm
                        nodePackages.bash-language-server
                        nodePackages.vscode-css-languageserver-bin
                        nodePackages.vscode-html-languageserver-bin
                        nodePackages.vscode-json-languageserver
                        python-language-server
                        python39Packages.pynvim
                        rust-analyzer
                        sumneko-lua-language-server
                        texlab # latex lsp server
                        tree-sitter # syntax highlighter
                        unstable.joplin-desktop
                        unstable.neovim
                        xournalpp
                        vscodium
                ];
        };
}
