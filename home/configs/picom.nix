{ config, pkgs, ... }:

{
  services.picom = {
    enable = true;
    backend = "glx";
    vSync = true;
    settings = {
      "glx-use-copysubbuffer-mesa" = true;
      "glx-copy-from-front" = true;
      "glx-swap-method" = 2;
      "xrender-sync" = true;
      "xrender-sync-fence" = true;
    };
  };
}
