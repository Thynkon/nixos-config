{
  description = "My Home Manager Configuration";
  inputs = {
    nixpkgs.url = "nixpkgs/nixpkgs-unstable";
    silentSDDM = {
      url = "github:uiriansan/SilentSDDM";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs =
    {
      nixpkgs,
      silentSDDM,
      ...
    }@inputs:
    {
      nixosConfigurations.thinkpad-yoga-x1 = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./configuration.nix
          silentSDDM.nixosModules.default
        ];
        specialArgs = { inherit inputs; };
      };
    };
}
