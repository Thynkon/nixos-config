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
      hayagriva
      libreoffice-fresh
      pdfpc
      tectonic # latex
      typst
      xournalpp
    ];
  };
}
