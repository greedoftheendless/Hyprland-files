{
  pkgs,
  inputs,
  ...
}:
{

  #Enabling Hyprland
  #wayland.windowManager.hyprland.enable

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
    git
    tealdeer
    xfce.thunar
    yazi
    inputs.nixvim.packages.${pkgs.system}.default
    starship
    btop
    better-control
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
    obs-studio
    atuin
    cmatrix
    kando
    protonplus

    # Fonts
    nerd-fonts.fira-code
    nerd-fonts.jetbrains-mono
  ];
}
