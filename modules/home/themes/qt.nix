{ pkgs, ... }:
{
  /*qt = {
    enable = true;
    platformTheme.name = "qtct";
    style.name = "kvantum";

  };*/
  qt = {
  enable = true;
  platformTheme.name = "adwaita-dark";
  style = {
    name = "adwaita-dark";
  };
};   

  #xdg.configFile."Kvantum/kvantum.kvconfig".source = (pkgs.formats.ini { }).generate "kvantum.kvconfig" {
  #  General.theme = "Catppuccin-Macchiato-Blue";
  #};    
}
