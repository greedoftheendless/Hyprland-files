{ config, pkgs, ... }:

{
  programs.fish = {
    enable = true;
  };

  # Configure starship prompt for fish
  programs.starship.enableFishIntegration = true;
}
