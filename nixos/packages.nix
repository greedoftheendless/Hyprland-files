{
  pkgs,
  inputs,
  ...
}: {
  # Enable SSH
  services.openssh.enable = true;

  #Adding nix-experimental command features and nix flakes
  nix.settings.experimental-features = ["nix-command" "flakes"];

  #Pointing nh the direction of flake
  environment.sessionVariables = {
    NH_FLAKE = "$HOME/dotfiles/nixos";
  };

  nixpkgs.config.allowUnfree = true;

  #Enabling/Installing hyprland
  #programs.hyprland.enable = true;

  #Enabling SDDM Login manager
  services.displayManager.gdm.enable = true;
  services.desktopManager.gnome.enable = true;

  #Installing applications/packages using enable option
  programs.television.enable = true;
  programs.steam.enable = true;

  environment.systemPackages = with pkgs; [

    #Temporary packages
    nushell

    #Hyprland required packages
    waybar
    hyprlock
    hypridle
    pywal
    rofi
    wlogout
    waypaper
    swww
    mpvpaper
    hyprshot
    hyprpicker

    # CLI Tools
    gemini-cli
    openssl
    eza
    bat
    tree
    fastfetch
    starship
    fzf
    nix-search-tv
    fd
    zoxide

    # Necessary tools
    #kitty
    ghostty
    tealdeer
    git
    xfce.thunar
    yazi
    neovim
    inputs.nixvim.packages.${pkgs.system}.default
    zed-editor
    btop
    better-control
    binutils
    lazygit
    unzip
    openvpn
    nh
    podman
    podman-tui
    xournalpp
    caffeine-ng

    #Pentesting and related tools
    wireshark
    netdiscover
    nmap
    nftables
    ffuf
    feroxbuster
    sqlmap
    john
    netcat
    hydra
    metasploit
    aircrack-ng
    crunch
    nikto
    hashcat
    steghide
    git-dumper
    burpsuite
    stegseek
    burpsuite
    wpscan
    whatweb
    theharvester
    binwalk
    tcpdump

    # Web/Common Apps
    librewolf
    firefox
    libreoffice-still
    wget
    curl
    flameshot
    spotify
    fastfetch
    vesktop
    kdePackages.kdenlive
    dropbox
    obsidian
    clipse
    protonvpn-gui
    cava
    dropbox
    obs-studio
    atuin
    cmatrix
    kando
    protonplus
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.fira-code
    nerd-fonts.jetbrains-mono
  ];
}
