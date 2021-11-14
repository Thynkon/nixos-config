{ pkgs, ... }:

{
        # List packages installed in system profile. To search, run:
        # $ nix search wget
        environment.systemPackages = with pkgs; [
                vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
                wget
                firefox
                nix-index

                unzip
                p7zip

                # utilities
                #dconf-editor
                btrfs-progs
                dmenu
                dosfstools
                e2fsprogs
                exfat-utils
                jq
                lsof
                ntfs3g
                tree
                udiskie

                # network
                bind # nslookup
                curl
                inetutils # hostname
                iproute2
                networkmanager
                nmap
                wget

                # fonts
                font-awesome
                cantarell-fonts
                dejavu_fonts
                font-awesome
                hack-font
                hermit
                iosevka
                liberation_ttf
                meslo-lgs-nf
                noto-fonts
                roboto
                roboto-mono
                tamsyn
                terminus_font
                ttf_bitstream_vera
                ubuntu_font_family

                python3Full
                python39Packages.pip
                python39Packages.setuptools

                brightnessctl

                # programming languages
                gcc
                gnumake

                killall

                php80
                php80Extensions.xdebug
                php80Packages.composer

                patchelf
        ];

        nixpkgs.config.packageOverrides = pkgs: {
                nur = import (builtins.fetchTarball "https://github.com/nix-community/NUR/archive/master.tar.gz") {
                        inherit pkgs;
                };
        };

        nix.autoOptimiseStore = true;

}
