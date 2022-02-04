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
      hexyl # hexdump with colors
      htop
      ledger-live-desktop
      lsd
      neofetch
      peek
      python310Packages.grip # markdown viewer
      python310Packages.pip
      python310Packages.psutil
      python310Packages.setuptools
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
