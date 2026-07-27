{lib, pkgs, ...}:
{
  services = {
    protonmail-bridge = {
      enable = true;
    };
  };
  programs = {
    thunderbird  = {
      enable = true;
    };

  };
}
