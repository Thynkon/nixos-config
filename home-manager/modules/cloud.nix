
{lib, pkgs, ...}:
{
  services = {
    nextcloud-client = {
      enable = true;
    };
  };
	home = {
		packages = with pkgs; [
		];
	};
}
