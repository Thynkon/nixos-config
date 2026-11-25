{
  config,
  pkgs,
  inputs,
  ...
}:

{
  # Enable CUPS to print documents.
  services.printing.enable = true;
  programs.system-config-printer.enable = true;
  services.avahi = {
    enable = true;
    nssmdns4 = true;
    openFirewall = true;
  };
  services.printing.drivers = with pkgs; [
    gutenprint
    hplip
    brlaser
  ];
}
