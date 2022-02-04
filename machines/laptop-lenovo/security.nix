{ config, pkgs, lib, ... }:

{
        services.fprintd.enable = true;
        services.fwupd.enable = true;
        security.pam.services.login.fprintAuth = true;
        security.pam.services.xscreensaver.fprintAuth = true;

        security.polkit.extraConfig = ''
            polkit.addRule(function (action, subject) {
              if (action.id == "net.reactivated.fprint.device.enroll") {
                return subject.user == "root" ? polkit.Result.YES : polkit.result.NO
              }
            })
          '';
}
