{ config, pkgs, ... }:

{
  programs.zed = {
    enable = true;
    settings = {
      icon_theme = "Catppuccin Mocha";
      telemetry = {
        metrics = false;
      };
      vim_mode = true;
      ui_font_size = 20;
      buffer_font_size = 20;
      theme = {
        mode = "system";
        light = "Catppuccin Latte";
        dark = "Catppuccin Macchiato";
      };
    };
  };
}
