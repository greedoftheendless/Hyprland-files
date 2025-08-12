{
  description = "Greed's Nix-Flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixvim.url = "github:dc-tec/nixvim";
  };

  outputs =
    inputs@{ ... }:
    {
      nixosConfigurations = {
        greed = inputs.nixpkgs.lib.nixosSystem {
          specialArgs = { inherit inputs; };
          modules = [
            ./configuration.nix
            ./packages.nix
          ];
        };
      };
    };
}
