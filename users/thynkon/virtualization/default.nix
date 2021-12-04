{ config, pkgs, ... }:

{
        virtualisation.libvirtd.enable = true;
        programs.dconf.enable = true;
        environment.systemPackages = with pkgs; [ virt-manager ];
        # allow usb redirect (https://github.com/NixOS/nixpkgs/issues/106594)
        virtualisation.spiceUSBRedirection.enable = true;
        users.users.thynkon.extraGroups = [ "libvirtd" "docker" ];

        virtualisation.docker.enable = true;
}
