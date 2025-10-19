{ inputs, config, pkgs, ... }:

{
  imports = [ 
      ./hardware-configuration.nix
      inputs.home-manager.nixosModules.default
      ../../modules/nixos/bundle.nix
    ];

  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users = {
      "blueguy" = import ./home.nix;
    };
  };

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [

    # System

    waybar
    rofi
    hyprshot
    dunst
    hyprpaper
    hyprpolkitagent
    home-manager
    gnome-keyring
    pavucontrol
    hyprlock

  ];

  fonts.packages = with pkgs; [
    jetbrains-mono
    noto-fonts
    noto-fonts-emoji
    twemoji-color-font
    font-awesome_6
    powerline-fonts
    powerline-symbols
    fira
    nerd-fonts.jetbrains-mono
    powerline-fonts
  ];

  programs.hyprland.enable = true;

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

  virtualisation.libvirtd.enable = true;


  xdg.portal = {
    enable = true;
    #extraPortals = [ pkgs.xdg-desktop-portal-wlr ];
    wlr.enable = true;
  };
}

