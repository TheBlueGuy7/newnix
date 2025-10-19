{ inputs, config, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
      inputs.home-manager.nixosModules.default
      ./packages.nix
      ../../modules/nixos/bundle.nix
    ];

  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users = {
      "blueguy" = import ./home.nix;
    };
  };

  networking.hostName = "radiator-nixos";
  networking.networkmanager.enable = true;

  time.timeZone = "Europe/Budapest";

  console = {
  #   font = "Lat2-Terminus16";
    keyMap = "us";
  };
  system.stateVersion = "25.05";

  nix.settings.experimental-features = ["nix-command" "flakes"];

  services.flatpak.enable = true;
  services.dbus.enable = true;

  nixpkgs.overlays = [ inputs.polymc.overlay ];


  xdg.portal = {
    enable = true;
    #extraPortals = [ pkgs.xdg-desktop-portal-wlr ];
    wlr.enable = true;
  };
}

