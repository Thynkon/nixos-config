{ pkgs, config, ... }:
{
	environment.systemPackages =
		let
			php = pkgs.php80.buildEnv {
				extraConfig = ''
				[xdebug]
				zend_extension=${pkgs.php80Extensions.xdebug}/lib/php/extensions/xdebug.so
				xdebug.mode=debug
				xdebug.client_host=127.0.0.1
				xdebug.client_port=9003
				'';
			};
		in [
			php
		];
}
