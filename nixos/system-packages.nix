{
  pkgs,
  inputs,
  ...
}:
{
  # Enable SSH
  services.openssh.enable = true;

  #Adding bluetooth
  services.blueman.enable = true;

  #Adding power-management
  services.upower.enable = true;

  #Adding nix-experimental command features and nix flakes
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  #Pointing nh the direction of flake
  environment.sessionVariables = {
    NH_FLAKE = "$HOME/dotfiles";
  };

  nixpkgs.config.allowUnfree = true;

  #Enabling/Installing hyprland
  programs.hyprland.enable = true;

  #Enabling SSDM login screen
  services.displayManager.sddm.enable = true;

  #Home-manager config
  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    extraSpecialArgs = { inherit inputs; };
    users = {
      greed = import ../home/home.nix;
    };
  };

  #Installing applications/packages using enable option
  programs.steam.enable = true;

  environment.systemPackages = with pkgs; [

    #Terminal tools
    nh
    kando
    better-control
    upower
    upower-notify
  ];

  #Fonts
  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-emoji
    nerd-fonts.jetbrains-mono
    nerd-fonts.fira-code
    nerd-fonts.fira-mono
    nerd-fonts._0xproto
    nerd-fonts.iosevka-term-slab
    fira-code-symbols
    noto-fonts # Helps with displaying non english stuff like: 𓂿
    noto-fonts-lgc-plus
    noto-fonts-cjk-sans
    noto-fonts-cjk-serif
  ];
}
