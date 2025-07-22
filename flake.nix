{
  description = "Simple NixOS flake using existing configuration.nix and packages.nix";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11"; # or your preferred stable version
  };

  outputs = { self, nixpkgs }: {
    nixosConfigurations = {
      greed = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./configuration.nix
          ./packages.nix
        ];
      };
    };
  };
}
