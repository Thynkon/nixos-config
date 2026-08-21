{
  config,
  pkgs,
  inputs,
  ...
}:

{
  fonts.packages = with pkgs; [
    font-awesome
    inter
    inter-nerdfont
    monaspace
    roboto
    source-sans-pro
  ];
}
