{
  description = "Greed's Nix-Flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixvim.url = "github:spector700/Akari";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    inputs@{ ... }:
    {
      nixosConfigurations = {
        greed = inputs.nixpkgs.lib.nixosSystem {
          specialArgs = { inherit inputs; };
          modules = [
            nixos/configuration.nix
            nixos/system-packages.nix
            inputs.home-manager.nixosModules.default
            ({
              nix.settings.auto-optimise-store = true;
              nix.gc = {
                automatic = true;
                dates = "daily";
                options = "--delete-older-than 5d";
              };
            })
          ];
        };
      };
    };
}
