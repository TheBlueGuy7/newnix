{ pkgs, pkgs-stable, inputs,  ... }:

    {
    
    
    
    
    home.packages = with pkgs; [
        #plata-theme
        arc-icon-theme
        inputs.rose-pine-hyprcursor.packages.${pkgs.system}.default
        papirus-folders
        numix-icon-theme-circle
        colloid-icon-theme
        
    ];

    imports = [
        ./gtk.nix
        ./qt.nix
    ];
}
