{pkgs, pkgs-stable, inputs, ...}:
{

  imports = [
   ../../modules/home
  ];

  home = {
    username = "steve";
    homeDirectory = "/home/steve";
    stateVersion = "25.05";
  };

  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    
    # Desktop apps
    
    firefox

    # Themes

    plata-theme
    arc-icon-theme
    inputs.rose-pine-hyprcursor.packages.${system}.default

  ];

  programs.home-manager.enable = true;
  services.playerctld.enable = true;
}
