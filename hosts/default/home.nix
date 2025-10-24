{pkgs, inputs, ...}:
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
    xwayland
    protontricks
    chromium
    rofimoji
    xfce.thunar
    modrinth-app
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
    gvfs
    easyeffects


    # CLI utils

    zsh
    fastfetch
    alacritty
    nodejs_23
    pnpm_10
    python313
    python313Packages.pip
    eza
    fzf
    tree
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
    gtk3
    webkitgtk_4_1
    zip
    unzip
    gnutar
    curl
    p7zip
    jdk8
    xpad
    wineWowPackages.wayland
    virt-manager
    ocamlPackages.gstreamer
    glew
    webkitgtk_4_1
    kdePackages.k3b

    # Themes

    plata-theme
    arc-icon-theme
    inputs.rose-pine-hyprcursor.packages.${pkgs.system}.default

  ];

  programs.home-manager.enable = true;
}
