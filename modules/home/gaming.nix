{ pkgs, pkgs-stable, inputs, ... }:
{
    home.packages = with pkgs; [
        
        firefox
        pkgs-stable.brave
        vesktop
        nodejs_24
        pnpm_10
        python313
        python313Packages.pip
        prismlauncher
        lutris
        winetricks
        lunar-client
        protontricks
        heroic
        labymod-launcher
        inputs.polymc
    ];
    
    
}