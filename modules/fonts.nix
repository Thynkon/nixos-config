{
  config,
  pkgs,
  inputs,
  ...
}:

{
  fonts.packages = with pkgs; [
    caladea # cambria
    corefonts # ms fonts
    font-awesome
    garamond-libre
    inter
    inter-nerdfont
    monaspace
    roboto
    source-sans-pro
  ];
}
