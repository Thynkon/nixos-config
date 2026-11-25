{
  config,
  pkgs,
  inputs,
  ...
}:

{
  imports = [
    ./audio.nix
    ./authentication.nix
    ./boot.nix
    ./desktop-environment.nix
    ./filesystem.nix
    ./fonts.nix
    ./ia.nix
    ./input.nix
    ./network.nix
    ./printers.nix
    ./security.nix
    ./tools.nix
    ./virtualization.nix
  ];

}
