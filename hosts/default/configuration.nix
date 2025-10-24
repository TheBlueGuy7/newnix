{ inputs, config, pkgs, ... }:

{
  imports = [ 
      ./hardware-configuration.nix
      inputs.home-manager.nixosModules.default
      ../../modules/nixos
    ];

  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    backupFileExtension = "backup";
    users = {
      "blueguy" = import ./home.nix;
    };
  };

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [

    # System

    
    gnome-keyring
    gh
    git
    linuxKernel.packages.linux_6_12.v4l2loopback
    mesa
    mesa_glu
    vulkan-loader
    mesa-demos
    wxwidgets_3_3

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

  programs.steam.enable = true;

  time.timeZone = "Europe/Budapest";

  console.keyMap = "us";
  
  system.stateVersion = "25.05";

  nix.settings.experimental-features = ["nix-command" "flakes"];

  

  nixpkgs.overlays = [ inputs.polymc.overlay ];

  virtualisation.libvirtd.enable = true;


  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-wlr pkgs.xdg-desktop-portal-gtk ];
    wlr.enable = true;
    config.common.default = "*";
  };
}

