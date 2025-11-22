{ ... }:
{
  networking.hostName = "radiator";
  networking.networkmanager.enable = true;
  networking.firewall = {
    enable = false;
    allowedTCPPorts = [ 80 443 ];
  };
  networking.nameservers = [ "1.1.1.1" "8.8.8.8" ];
}
