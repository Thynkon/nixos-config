{
  config,
  pkgs,
  inputs,
  ...
}:

{
  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager = {
    enable = true;
    plugins = with pkgs; [
      networkmanager-openconnect
    ];
  };

  networking.wireless.enable = true; # Enables wireless support via wpa_supplicant.
  services.resolved.enable = true;

  # Open ports in the firewall.
  #networking.firewall.allowedTCPPorts = [ ];
  # Or disable the firewall altogether.
  networking.firewall.enable = true;

  networking.nftables.enable = true;
  services.firewalld = {
    enable = true;
    # Optional for NetworkManager, block inbound connections for new/public/untrusted WiFi connections
    settings.DefaultZone = "drop";
  };

  services.tailscale = {
    enable = true;
  };

  services.mullvad-vpn = {
    enable = true;
    gui.enable = true;
  };
}
