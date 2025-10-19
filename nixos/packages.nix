{ pkgs, pkgs-stable, inputs, ... }:
{
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [

    # Desktop apps
    
    firefox
    brave
    vesktop
    vscodium
    polymc
    shotwell
    tor-browser
    osu-lazer
    obs-studio
    heroic
    gpu-screen-recorder
    gpu-screen-recorder-gtk
    vlc
    qalculate-gtk
    parsec-bin
    arduino-ide
    filezilla
    gparted
    orca-slicer
    xwayland
    protontricks
    chromium
    rofimoji
    xfce.thunar

    kdePackages.sddm
    kdePackages.kwrited
    kdePackages.kate

    # CLI utils

    zsh
    fastfetch
    alacritty
    git
    nodejs_23
    pnpm_10
    python313
    python313Packages.pip
    eza
    fzf
    tree
    gh
    neovim
    btop
    stow
    exiftool
    steghide
    stegseek
    nmap
    gobuster
    lynx
    gtk4
    webkitgtk_4_1
    zip
    unzip
    gnutar
    curl
    p7zip
    jdk8
    xpad
    wineWowPackages.wayland

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

    # Themes

    plata-theme
    arc-icon-theme
    inputs.rose-pine-hyprcursor.packages.${pkgs.system}.default

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

}
