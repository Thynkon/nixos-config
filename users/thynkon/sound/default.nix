{ config, pkgs, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.thynkon = {
    packages = with pkgs; [
      # SOUND
      pavucontrol
      playerctl
      pamixer # manage sound from terminal
    ];
    extraGroups = [ "plugdev" ];
  };

  hardware.openrazer.enable = true;
  # rtkit is optional but recommended
  security.rtkit.enable = true;

  services.pipewire = {
    enable = true;
    alsa = {
      enable = true;
      support32Bit = true;
    };
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };
}
