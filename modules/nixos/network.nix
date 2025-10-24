{ ... }:
{
  networking.hostName = "radiator-nixos";
  networking.networkmanager.enable = true;
  networking.firewall = {
    enable = false;
    allowedTCPPorts = [ 80 443 ];

  };
}