{ pkgs, pkgs-stable, ... }:
{
    home.packages = with pkgs; [
        brave
        firefox
        vesktop
        unixcw
        virt-manager
        deluge
        easyeffects
        tumbler
        thunar
        orca-slicer
        qtox
        localsend

        kdePackages.kwrited
        kdePackages.kate
        kdePackages.ark
        kdePackages.kdenlive
        
        filezilla
        gparted
        gpu-screen-recorder
        gpu-screen-recorder-gtk
        vlc
        qalculate-gtk
        shotwell
        tor-browser
        obs-studio
        chromium
        helvum
        libreoffice-qt6-fresh
        onlyoffice-desktopeditors
        parabolic
        blender
        krita
        qdirstat
        obsidian
        trayscale
        sdrpp
        kicad
        audacity
        spotify
        r2modman
        teamspeak6-client
    ];
}
