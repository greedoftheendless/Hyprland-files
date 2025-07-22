{ pkgs, ... }:

{

  # Enable SSH
  services.openssh.enable = true;

  #Adding nix-experimental command features and nix flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
     
    # CLI Tools
    eza
    bat
    tree
    fastfetch
    starship
    fzf
    fd
    zoxide

    # Necessary tools
    kitty
    ghostty
    tldr
    git
    xfce.thunar
    yazi
    dragon-drop
    vscode.fhs
    neovim
    btop
    better-control
    binutils
    lazygit
    unzip
    kando

    #Pentesting and related tools
    wireshark
    nmap
    ffuf
    feroxbuster
    burpsuite
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

    # Web/Common Apps
    floorp
    wget
    curl
    spotify
    fastfetch
    vesktop
    dropbox
    obsidian
    clipse
    protonvpn-gui
    cava
    dropbox
    atuin
    cmatrix
  ];

    fonts.packages = with pkgs; [
  nerd-fonts.fira-code 
  nerd-fonts.jetbrains-mono 
];
}
