{
  lib,
  pkgs,
  config,
  ...
}:
{
  environment.systemPackages = with pkgs; [
    caligula # usb bootable
  ];

}
