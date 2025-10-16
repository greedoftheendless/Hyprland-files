{
  pkgs,
  inputs,
  ...
}:
{

  #Installing Helix
  programs.helix.enable = true;

  #Enable zoxide
  programs.zoxide = {
    enable = true;
    enableFishIntegration = true;
    options = [ "--cmd cd" ];
  };

  #Enable hyprpanel
  #programs.hyprpanel.enable = true;

  home.packages = with pkgs; [

    #Shells
    bash
    fish
    nushell

    #Hyprland/Niri required packages
    quickshell
    waybar
    hyprlock
    hypridle
    pywal
    cosmic-launcher
    rofi
    wlogout
    waypaper
    swww
    mpvpaper
    hyprshot
    hyprpicker
    ffmpeg
    inputs.niri-scratchpad.packages.${pkgs.system}.default

    # CLI Tools
    gemini-cli
    tmux
    cava
    #fastfetch
    atuin
    eza
    openssl
    bat
    tree
    fd

    #Languages and their packages
    python3

    # Necessary tools
    playerctl
    bc
    brightnessctl
    usbguard
    usbguard-notifier
    ghostty
    alacritty
    kitty
    git
    tealdeer
    nemo
    kdePackages.gwenview
    lf
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
    zenity

    #Pentesting and related tools
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
    exploitdb
    steghide
    git-dumper
    bettercap
    unixtools.netstat
    burpsuite
    stegseek
    wpscan
    theharvester
    binwalk
    tcpdump

    # Web/Common Apps
    kalker
    catppuccin
    rofimoji
    zed-editor
    thunderbird
    #librewolf
    tor-browser
    inputs.zen-browser.packages.${pkgs.system}.default
    firefox
    libreoffice-still
    wget
    curl
    croc
    spotify
    vesktop
    dropbox
    obsidian
    copyq
    protonvpn-gui
    cava
    obs-studio
    protonplus
  ];
}
