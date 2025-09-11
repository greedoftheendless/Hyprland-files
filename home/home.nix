{ config, pkgs, ... }:

{
  imports = [
    ./home-packages.nix
  ];

  fonts.fontconfig.enable = true;

  home.username = "greed";
  home.homeDirectory = "/home/greed";
  home.stateVersion = "24.05";

  programs.home-manager.enable = true;
  programs.fish.enable = true;
}
