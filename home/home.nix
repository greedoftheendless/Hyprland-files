{ config, pkgs, ... }:

{
  imports = [
    ./configs/git.nix
    ./configs/ghostty.nix
    ./configs/starship.nix
    ./configs/fish.nix
    ./configs/zed.nix
    ./configs/picom.nix
  ];

  home.username = "greed";
  home.homeDirectory = "/home/greed";
  home.stateVersion = "24.05";

  programs.home-manager.enable = true;
}
