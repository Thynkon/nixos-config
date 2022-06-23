{ config, pkgs, ... }:

let
  unstable = import <nixos-unstable> { config = { allowUnfree = true; }; };
in
{
  programs.adb.enable = true;
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.thynkon = {
    packages = with pkgs; [
      # utilities
      android-file-transfer
      awscli2
      bat
      chezmoi
      ctags
      direnv
      drawio
      du-dust
      exiftool # remove metadata
      fd
      flameshot
      fzf
      git
      gitui
      hexyl # hexdump with colors
      htop
      ledger-live-desktop
      lm_sensors
      lsd
      neofetch
      peek
      unstable.python39Packages.grip # markdown viewer
      unstable.python39Packages.pip
      unstable.python39Packages.psutil
      unstable.python39Packages.setuptools
      unstable.python39Packages.cpyparsing
      unstable.python3Full
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
