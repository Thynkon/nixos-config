
{lib, pkgs, ...}:
{
  services = {
    nextcloud-client = {
      enable = true;
    };
  };
  programs = {
    zen-browser = {
      enable = true;
    };

  };
	home = {
		packages = with pkgs; [
      signal-desktop
      telegram-desktop
      webcord
		];
	};
}
