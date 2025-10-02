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
  programs.hyprpanel.enable = true;

  home.packages = with pkgs; [
    #Temporary packages

    #Shell
    fish
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
    zellij
    cava
    #fastfetch
    atuin
    eza
    openssl
    bat
    tree
    fd

    # Necessary tools
    usbguard
    usbguard-notifier
    python3
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
    kdePackages.kdenlive
    dropbox
    obsidian
    copyq
    protonvpn-gui
    cava
    obs-studio
    protonplus
  ];
}
