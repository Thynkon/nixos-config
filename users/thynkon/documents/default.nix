{ config, pkgs, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.thynkon = {
    packages = with pkgs; [
      # gscan2pdf
      # libreoffice-fresh
      drawio
      libreoffice
      #texlive.combined.scheme-basic
      #texlive-fontsextra
      #texlive-lang
      #texlive-latexextra
      #texlive-science
      ## texlive.combined.scheme-full
      #xreader
      zathura
      #zathura-pdf-poppler
    ];
  };
}
