{ config, pkgs, ... }:

{
        # Define a user account. Don't forget to set a password with ‘passwd’.
        users.users.thynkon = {
                packages = with pkgs; [
                        # utilities
                        #cronie
                        #grub-customizer
                        android-file-transfer
                        bat
                        chezmoi
                        ctags
                        du-dust
                        exiftool # remove metadata
                        fd
                        flameshot
                        fzf
                        git
                        htop
                        ledger-live-desktop
                        lsd
                        neofetch
                        peek
                        python39Packages.grip # markdown viewer
                        python39Packages.pip
                        python39Packages.psutil
                        python39Packages.setuptools
                        python3Full
                        qbittorrent
                        ripgrep
                        rofi
                        sharutils
                        usbutils
                        uudeview
                        vifm-full
                        xsel
                        zoxide
                ];
        };

        hardware.ledger.enable = true;
}
