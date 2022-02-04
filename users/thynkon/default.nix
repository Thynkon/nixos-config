{ config, pkgs, ... }:

{
  imports = [
    # Include the results of the hardware scan.
    ../../wm/bspwm.nix
    ../../wm/awesome.nix
    # ../../wm/xmonad.nix
    ./battery
    ./browsers
    ./cloud
    ./communication
    ./database
    ./desktop-environment
    ./development
    ./documents
    ./email
    ./keyboard
    ./multimedia
    ./network-discovery
    ./printers
    ./shells
    ./sound
    ./text-editors
    ./utilities
    ./virtualization
  ];

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.thynkon = {
    isNormalUser = true;
    extraGroups = [ "wheel" "fuse" ]; # Enable ‘sudo’ for the user. and sshfs
    shell = pkgs.zsh;
  };

  powerManagement.powertop.enable = true;
}
