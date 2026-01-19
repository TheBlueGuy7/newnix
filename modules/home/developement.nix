{ pkgs, pkgs-stable, ... }:
{
    home.packages = with pkgs; [
        nodejs_24
        pnpm_10
        python313
        python313Packages.pip
        android-studio
        android-tools
        pkgs-stable.jetbrains.idea
        jdk25_headless
        avrdude
        arduino-ide
        vscode
    ];

    home.sessionVariables = {
        GIO_EXTRA_MODULES = "${pkgs.gvfs}/lib/gio/modules";
    };
    
    
}
