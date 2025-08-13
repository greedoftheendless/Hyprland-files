{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "greedoftheendless";
    userEmail = "greedoftheendless@gmail.com";
  };
}
