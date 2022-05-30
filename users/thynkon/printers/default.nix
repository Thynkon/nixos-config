{ config, pkgs, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.thynkon = {
    packages = with pkgs; [
      # printers
      #cups-pdf
      #gsfonts
      #gtk3-print-backends
      #libcups
      cups
      ghostscript
      # gscan2pdf
      gutenprint
      # system-config-printer
    ];
  };
}
