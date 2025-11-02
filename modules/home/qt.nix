{ pkgs, ... }:
{
  qt = {
    enable = true;
    style = {
      name = "Breeze-Dark";
      package = pkgs.kdePackages.breeze-gtk;
    };
  };
}