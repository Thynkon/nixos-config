{ config, pkgs, ... }:

{
  # install wireshark and setup group so it can have root privileges
  programs.wireshark = {
    enable = true;
    package = pkgs.wireshark;
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.thynkon = {
    packages = with pkgs; [
      # network discovery
      avahi
      burpsuite
      nssmdns
      smbnetfs
    ];
  };
}
