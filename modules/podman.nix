{pkgs, ...}: {
  # Install Podman and the TUI for managing containers
  environment.systemPackages = with pkgs; [
    podman
    podman-tui
  ];

  # Enable the core Podman service
  virtualisation.podman = {
    enable = true;
    # Creates a Docker-compatible socket for tools like Docker Compose
    dockerCompat = true;
    dockerSocket.enable = true;

    # This key for defining networks has changed multiple times.
    # We'll use 'networks', which should work for your system.
    networks = {
      bridge = {
        driver = "bridge";
        ipam.config = [
          {subnet = "16.0.0.0/16";}
        ];
      };
    };
  };

  # Configure a user and enable the user-level Podman service
  # Replace 'myuser' with your actual username
  users.users.myuser = {
    isNormalUser = true;
    extraGroups = ["podman"];
  };

  # Enable the Podman socket for the user, allowing podman-tui and other
  # user-level tools to connect.
  systemd.user.services.podman.enable = true;
  systemd.user.sockets.podman.enable = true;
}
