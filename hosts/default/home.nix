{pkgs, inputs, ...}:
{

  imports = [
   ../../modules/home/bundle.nix
  ];

  home = {
    username = "blueguy";
    homeDirectory = "/home/blueguy";
    stateVersion = "25.05";
  };

  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    
    # Desktop apps
    
    firefox
    brave
    vesktop
    vscodium
    inputs.polymc
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
    steam
    virt-manager

    # Themes

    plata-theme
    arc-icon-theme
    inputs.rose-pine-hyprcursor.packages.${pkgs.system}.default

  ];

  
   

  #home.file = {

  #};

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs.home-manager.enable = true;
}
