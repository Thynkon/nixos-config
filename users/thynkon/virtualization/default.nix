{ config, pkgs, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.thynkon = {
    packages = with pkgs; [
      vagrant
    ];
    extraGroups = [ "libvirtd" "docker" ];
  };

  virtualisation = {
    libvirtd.enable = true;
    docker.enable = true;
    # allow usb redirect (https://github.com/NixOS/nixpkgs/issues/106594)
    spiceUSBRedirection.enable = true;
  };

  programs.dconf.enable = true;
  environment.systemPackages = with pkgs; [ virt-manager ];
}
