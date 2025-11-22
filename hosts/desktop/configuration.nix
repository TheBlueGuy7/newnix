{ inputs, config, pkgs, pkgs-stable, ... }:

{
  imports = [ 
      ./hardware-configuration.nix
      inputs.home-manager.nixosModules.default
      ../../modules/nixos
    ];

  home-manager = {
    extraSpecialArgs = { 
      inherit inputs pkgs-stable; 
    };
    backupFileExtension = "backup";
    users = {
      "blueguy" = import ./home.nix;
    };
    useGlobalPkgs = false;
  };

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs-stable; [

    # System

    
    gnome-keyring
    gh
    git
    linuxKernel.packages.linux_6_12.v4l2loopback
    mesa
    mesa_glu
    vulkan-loader
    mesa-demos
    pkgs.wxwidgets_3_3
    pkgs.polymc
    wayvnc

  ];

  fonts.packages = with pkgs; [
    jetbrains-mono
    noto-fonts
    noto-fonts-color-emoji
    twemoji-color-font
    font-awesome_6
    powerline-fonts
    powerline-symbols
    fira
    nerd-fonts.jetbrains-mono
    nerd-fonts.iosevka
    powerline-fonts
  ];

  programs.steam.enable = true;

  time.timeZone = "Europe/Budapest";

  console.keyMap = "us";
  
  system.stateVersion = "25.05";

  nix.settings.experimental-features = ["nix-command" "flakes"];

  

  nixpkgs.overlays = [ 
    inputs.polymc.overlay 
    (final: prev: {
      glxinfo = prev.mesa-demos;
    })
  ];

  virtualisation.libvirtd.enable = true;

  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-wlr pkgs.xdg-desktop-portal-gtk ];
    wlr.enable = true;
    config.common.default = "*";
  };

  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = with pkgs; [
    # Add libraries required by the ESP-IDF / PlatformIO toolchain
    # Common ones might include:
    gcc-unwrapped.lib
    glibc
    # You might need others depending on the specific toolchain version
    # Check the PlatformIO ESP32 core documentation or error messages if unsure
  ];
}

