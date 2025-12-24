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
  programs.home-manager.enable = true;
}
