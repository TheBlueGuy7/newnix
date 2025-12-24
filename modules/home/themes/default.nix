{ pkgs, pkgs-stable, inputs,  ... }:

    {
    
    
    
    
    home.packages = with pkgs; [
        #plata-theme
        arc-icon-theme
        inputs.rose-pine-hyprcursor.packages.${pkgs.system}.default
        (catppuccin-kvantum.override {
        accent = "blue";
        variant = "macchiato";
        })
        pkgs-stable.libsForQt5.qtstyleplugin-kvantum
        papirus-folders
        numix-icon-theme-circle
        colloid-icon-theme
        
    ];

    imports = [
        ./gtk.nix
        ./qt.nix
    ];
}