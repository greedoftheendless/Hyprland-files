{ pkgs, ... }:

{

  # Enable SSH
  services.openssh.enable = true;

  #Adding nix-experimental command features and nix flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  
  #Pointing nh the direction of flake
  environment.sessionVariables = {
    NH_FLAKE = "$HOME/dotfiles/nixos";
  };

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
     
    # CLI Tools
    openssl
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
    openvpn
    nh
    podman
    xournalpp

    #Pentesting and related tools
    wireshark
    nmap
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
    floorp
    firefox
    spicetify-cli
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
    kando
  ];

    fonts.packages = with pkgs; [
  nerd-fonts.fira-code 
  nerd-fonts.jetbrains-mono 
];
}
