{
  pkgs,
  inputs,
  ...
}:
{

  #Enabling Hyprland
  #wayland.windowManager.hyprland.enable

  #Enable hyprpanel
  programs.hyprpanel.enable = true;

  home.packages = with pkgs; [
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
    ffmpeg

    # CLI Tools
    gemini-cli
    openssl
    eza
    bat
    tree
    fzf
    fd
    zoxide

    # Necessary tools
    ghostty
    kitty
    git
    tealdeer
    xfce.thunar
    yazi
    inputs.nixvim.packages.${pkgs.system}.default
    starship
    btop
    binutils
    lazygit
    unzip
    openvpn
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
    wpscan
    theharvester
    binwalk
    tcpdump

    # Web/Common Apps
    zed-editor
    librewolf
    firefox
    libreoffice-still
    wget
    curl
    spotify
    fastfetch
    vesktop
    kdePackages.kdenlive
    dropbox
    obsidian
    clipse
    protonvpn-gui
    cava
    obs-studio
    atuin
    cmatrix
    protonplus

    # Fonts
    nerd-fonts.fira-code
    nerd-fonts.jetbrains-mono
  ];
}
