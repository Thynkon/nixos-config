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
    ./desktop-environment.nix
    ./fonts.nix
    ./input.nix
    ./network.nix
    ./security.nix
    ./virtualization.nix
  ];

}
