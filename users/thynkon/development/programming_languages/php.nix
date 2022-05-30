{ pkgs, config, ... }:
{
  environment.systemPackages =
    let
      php = pkgs.php81.buildEnv {
        extensions = { all, enabled, ... }: enabled ++ [ all.mongodb ];
        extraConfig = ''
          [xdebug]
          zend_extension=${pkgs.php81Extensions.xdebug}/lib/php/extensions/xdebug.so
          xdebug.mode=debug
          xdebug.client_host=127.0.0.1
          xdebug.client_port=9003
        '';
      };
    in
    [
      php
    ];
}
