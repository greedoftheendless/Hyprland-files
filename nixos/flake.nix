{
  description = "Greed's Nix-Flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixvim.url = "github:dc-tec/nixvim";
  };

  outputs = {
    self,
    nixpkgs,
    nixvim,
    ...
  }: let
    system = "x86_64-linux";

    nixosPkgs = import nixpkgs.nixos {
      system = system;
      config = {
        allowUnfree = true;
      };
    };

    pkgs = nixosPkgs.pkgs;
    lib = nixosPkgs.lib;
  in {
    nixosConfigurations = {
      greed = nixpkgs.lib.nixosSystem {
        specialArgs = {
          outputs = self;
        };
        modules = [
          ./configuration.nix
          ./packages.nix
        ];
      };
    };
  };
}
