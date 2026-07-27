{
  config,
  pkgs,
  inputs,
  ...
}:

{
  services.xserver.xkb = {
    layout = "ch,optimot";
    variant = "fr,";
    options = "grp:alt_shift_toggle";
    extraLayouts.optimot = {
      description = "Optimot ergonomic French layout";
      languages = [ "fra" ];
      keycodesFile = ../keyboard/symbols/optimot_keycodes;
      typesFile = ../keyboard/symbols/optimot_types;
      compatFile = ../keyboard/symbols/optimot_compat;
      symbolsFile = ../keyboard/symbols/optimot_symbols;
      geometryFile = ../keyboard/symbols/optimot_geometry;
    };
  };

  # Configure console keymap
  console.keyMap = "fr_CH";
}
