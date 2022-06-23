{ config, pkgs, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.thynkon = {
    packages = with pkgs; [
      # email
      protonmail-bridge
      thunderbird
    ];
  };

  systemd.user.services.protonmail = {
    description = "Protonmail Bridge";
    enable = true;
    script =
      "${pkgs.protonmail-bridge}/bin/protonmail-bridge --no-window --log-level debug";
    path = [ pkgs.gnome3.gnome-keyring ]; # HACK: https://github.com/ProtonMail/proton-bridge/issues/176
    wantedBy = [ "graphical-session.target" ];
    partOf = [ "graphical-session.target" ];
  };
}
