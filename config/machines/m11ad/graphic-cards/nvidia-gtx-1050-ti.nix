{
  config,
  pkgs,
  inputs,
  lib,
  ...
}:

{
  hardware.graphics.enable = true;
  boot.initrd.kernelModules = [
    "nvidia"
    "nvidia_modeset"
    "nvidia_uvm"
    # "nvidia_drm"
  ];

  hardware.nvidia = {
    open = false;
    modesetting.enable = true;
    nvidiaSettings = true;
    branch = "legacy_580";
  };
  services.xserver.videoDrivers = [ "nvidia" ];
}
