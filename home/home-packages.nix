{
  pkgs,
  inputs,
  ...
}:
{

  #Enabling Hyprland
  #wayland.windowManager.hyprland.enable

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
    atuin
    openssl
    bat
    tree
    fd

    # Necessary tools
    ghostty
    kitty
    git
    tealdeer
    xfce.thunar
    kdePackages.gwenview
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
    helix
    thunderbird
    #librewolf
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
