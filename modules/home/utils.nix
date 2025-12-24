{ pkgs, pkgs-stable, ... }:
{
    home.packages = with pkgs; [
        eza
        fzf
        tree
        btop
        lynx
        zip
        unzip
        gnutar
        curl
        p7zip
        pkg-config
        fd
        rar
        zenity
        wget
        openvpn
        cifs-utils
        ripgrep
        inetutils
        scanmem
        imagemagick
        pv
        glew
        fastfetch
        taglib_1
        rofimoji
        xdg-utils
        xfce.thunar-archive-plugin
        xfce.thunar-volman
        xfce.exo
        nitch
        ffmpeg
    ];

    services.playerctld.enable = true;
}
