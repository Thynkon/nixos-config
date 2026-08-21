{
  config,
  pkgs,
  inputs,
  ...
}:

{
  security.auditd.enable = true;
  security.audit.enable = true;
  security.audit.rules = [
    "-a exit,always -F arch=b64 -S execve"
  ];

  security.sudo.enable = false;
  security.sudo.execWheelOnly = true;
}
