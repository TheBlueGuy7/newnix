{ pkgs, pkgs-stable, inputs, ... }:
{
    home.packages = with pkgs; [ 
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
