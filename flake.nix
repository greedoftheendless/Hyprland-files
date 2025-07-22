{
  description = "Greed's Nix-Flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }:
    let
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
          modules = [
            ./configuration.nix
            ./packages.nix
          ];
        };
      };

      devShells.${system} = {
        python-data = pkgs.mkShell {
          buildInputs = with pkgs.python3Packages; [
            python pip pandas numpy matplotlib seaborn jupyterlab ipython
          ];

          shellHook = ''
            echo "🐍 Python Dev Shell Activated"
          '';
        };

        python-hacking = pkgs.mkShell {
          buildInputs = with pkgs.python3Packages; [
            python pip requests pwntools scapy flask beautifulsoup4 cryptography
          ];

          shellHook = ''
            echo "💻 Python Hacking Scripting Shell Activated"
          '';
        };
      };
    };
}
