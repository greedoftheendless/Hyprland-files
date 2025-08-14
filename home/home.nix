{ config, pkgs, ... }:

{
  imports = [
    ./home-packages.nix
  ];

  home.username = "greed";
  home.homeDirectory = "/home/greed";
  home.stateVersion = "24.05";

  programs.home-manager.enable = true;
}
