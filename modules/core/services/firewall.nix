{
  networking = {
    firewall = {
      enable = true;
      allowedTCPPorts = [22 443];
      allowedUDPPorts = [22 443];
    };
    # Enable networking
    networkmanager.enable = true;
  };
}