{pkgs, pkgs-stable, inputs, ...}:
{

  imports = [
   ../../modules/home
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
    pkgs-stable.brave
    librewolf
    vesktop
    vscodium
    inputs.polymc
    shotwell
    tor-browser
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
    xwayland
    protontricks
    chromium
    rofimoji
    xfce.thunar
    orca-slicer
    qtox
    localsend
    kdePackages.kwrited
    kdePackages.kate
    kdePackages.kio-admin
    kdePackages.kompare
    kdePackages.ffmpegthumbs
    kdePackages.kdegraphics-thumbnailers
    kdePackages.kimageformats
    kdePackages.kdesdk-thumbnailers
    kdePackages.qtimageformats
    kdePackages.ark
    libappimage
    icoutils
    resvg
    taglib_1
    kdePackages.qt6ct
    shared-mime-info
    xdg-utils
    kdePackages.breeze
    kdePackages.breeze-icons
    xfce.tumbler
    easyeffects
    wxwidgets_3_3
    lunar-client
    deluge
    lutris
    winetricks
    jetbrains.idea-ultimate
    xfce.thunar
    xfce.thunar-archive-plugin
    xfce.thunar-volman
    xfce.tumbler
    xfce.exo # Adds 'Open Terminal Here'
    gvfs # Better file system backend


    # CLI utils

    zsh
    fastfetch
    nodejs_24
    pnpm_10
    python313
    python313Packages.pip
    eza
    fzf
    tree
    btop
    stow
    exiftool
    steghide
    stegseek
    nmap
    gobuster
    lynx
    gtk4
    gtk3
    webkitgtk_4_1
    zip
    unzip
    gnutar
    curl
    p7zip
    jdk8
    wineWowPackages.wayland
    virt-manager
    ocamlPackages.gstreamer
    glew
    webkitgtk_4_1
    kdePackages.k3b
    gcc
    gnumake
    pkg-config
    fd
    rar
    rarcrack
    libadwaita
    zenity
    wget
    openvpn

    # Themes

    plata-theme
    arc-icon-theme
    inputs.rose-pine-hyprcursor.packages.${system}.default

  ];

  programs.home-manager.enable = true;
}
