{
  pkgs,
  inputs,
  ...
}:
{

  #Enabling Hyprland
  #wayland.windowManager.hyprland.enable

  #Installing Helix
  programs.helix.enable = true;

  #setting fzf properly
  programs.fzf = {
    enable = true;
    enableFishIntegration = true;
  };

  #Enable zoxide
  programs.zoxide = {
    enable = true;
    enableNushellIntegration = true;
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
    cava
    #fastfetch
    atuin
    eza
    openssl
    bat
    tree
    fd

    # Necessary tools
    python3
    ghostty
    kitty
    git
    tealdeer
    cosmic-files
    kdePackages.gwenview
    yazi
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
