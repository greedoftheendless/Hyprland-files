{ config, pkgs, ... }:

{
  imports = [
  ];

  home.username = "greed";
  home.homeDirectory = "/home/greed";
  home.stateVersion = "24.05";

  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    librewolf
    firefox
    zed-editor
    starship
    git
  ];
}
