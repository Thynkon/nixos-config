{ lib, pkgs, ... }:
{
  services = {
  };
  programs = {
    sioyek = {
      enable = true;
    };

  };
  home = {
    packages = with pkgs; [
      #stirling-pdf
      hayagriva
      libreoffice-stable
      pdfpc
      poppler-utils # pdftotext
      tectonic # latex
      typst
      xournalpp
      # zotero
    ];
  };
}
