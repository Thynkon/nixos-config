{
  config,
  pkgs,
  inputs,
  ...
}:

{
  imports = [
    ./archives.nix
    ./browsers.nix
    ./cloud.nix
    ./communication.nix
    ./desktop-environment.nix
    ./development.nix
    ./devops.nix
    ./documents.nix
    ./email.nix
    ./multimedia.nix
    ./network.nix
    ./text-editors.nix
    ./tools.nix
  ];

}
