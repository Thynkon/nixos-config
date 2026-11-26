{
  config,
  pkgs,
  inputs,
  ...
}:

{
  imports = [ inputs.nix-mineral.nixosModules.nix-mineral ];

  # secrets management
  # disable fingerprint so gnome-keyring can be unlocked using the password
  security.pam.services = {
    login = {
      enableGnomeKeyring = true;
      fprintAuth = false;
    };
    sddm = {
      enableGnomeKeyring = true;
      fprintAuth = false;
    };
  };

  security.auditd.enable = true;
  security.audit.enable = true;
  security.audit.rules = [
    "-a exit,always -F arch=b64 -S execve"
  ];

  security.sudo.enable = false;
  security.sudo.execWheelOnly = true;

  nix-mineral = {
    enable = true;
    preset = [ "compatibility" ];
  };
}
