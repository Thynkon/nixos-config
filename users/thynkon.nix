{
  config,
  pkgs,
  inputs,
  ...
}:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users."thynkon" = {
    isNormalUser = true;
    description = "thynkon";
    shell = pkgs.fish;
    extraGroups = [
      "networkmanager"
      "wheel"
      "docker"
    ];
    packages = with pkgs; [
      #  thunderbird
    ];
  };
}
