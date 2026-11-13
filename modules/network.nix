{
  config,
  pkgs,
  inputs,
  ...
}:

{
  services.mullvad-vpn = {
    enable = true;
    gui.enable = true;
  };

}
