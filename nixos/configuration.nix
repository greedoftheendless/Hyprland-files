{
  config,
  pkgs,
  ...
}:
{
  imports = [
    # Include the results of the hardware scan.
    ./hardware-configuration.nix
  ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Use latest kernel.
  boot.kernelPackages = pkgs.linuxPackages_latest;

  networking.hostName = "greed";

  # Enable networking
  networking.networkmanager.enable = true;

  #Enable bluetooth
  hardware.bluetooth.enable = true;

  # Set your time zone.
  time.timeZone = "Asia/Kolkata";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_GB.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_IN";
    LC_IDENTIFICATION = "en_IN";
    LC_MEASUREMENT = "en_IN";
    LC_MONETARY = "en_IN";
    LC_NAME = "en_IN";
    LC_NUMERIC = "en_IN";
    LC_PAPER = "en_IN";
    LC_TELEPHONE = "en_IN";
    LC_TIME = "en_IN";
  };

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound with pipewire.
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  # Define a user account.
  users.users.greed = {
    isNormalUser = true;
    description = "Greed";
    extraGroups = [
      "networkmanager"
      "wheel"
      "video"
      "input"
      "wireshark"
    ];
    shell = pkgs.fish;
    ignoreShellProgramCheck = true;
  };

  #Fixing wireshark issue
  services.udev = {
    extraRules = ''
      SUBSYSTEM=="usbmon", GROUP="wireshark", MODE="0640"
    '';
  };

  # Enable the nftables firewall.
  networking.firewall.enable = true;

  # Define specific ports to allow inbound TCP traffic.
  networking.firewall.allowedTCPPorts = [
    80
    443
  ];

  # Define specific ports to allow inbound UDP traffic.
  networking.firewall.allowedUDPPorts = [
    53
    67
    68
  ];

  system.stateVersion = "25.05";
}
