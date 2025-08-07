{
  description = "Greed's Nix-Flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nvf.url = "github:notashelf/nvf";
  };

  outputs = {
    self,
    nvf,
    nixpkgs,
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

    python-hacking = pkgs.mkShell {
      buildInputs = with pkgs.python3Packages; [
        python
        requests
        pwntools
        scapy
        flask
        beautifulsoup4
        cryptography
      ];

      shellHook = ''
        echo "💻 Python Hacking Scripting Shell Activated"
      '';
    };
  };
}
