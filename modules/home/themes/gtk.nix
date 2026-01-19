{ pkgs, ... }:
{

  /*gtk = {
    enable = true;
    theme = {
      name = "Graphite-Dark";
      package = pkgs.graphite-gtk-theme.override {
        tweaks = [ "normal" "rimless" "nord" ];
      };
    };
    gtk3.extraConfig.Settings = ''gtk-application-prefer-dark-themes=1'';
    gtk4.extraConfig.Settings = ''gtk-application-prefer-dark-themes=1'';
  };*/
gtk = {
    enable = true;
    theme = {
    name = "Adwaita-dark";
    package = pkgs.gnome-themes-extra;
  };
    /*theme = {
      name = "Catppuccin-Macchiato-Standard-Blue-Dark";
      package = pkgs.catppuccin-gtk.override {
        accents = [ "blue" ];
        size = "standard";
        variant = "macchiato";
      };
    };
    */
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.catppuccin-papirus-folders.override {
        flavor = "macchiato";
        accent = "blue";
      };
    };
    gtk3 = {
      extraConfig.gtk-application-prefer-dark-theme = true;
    };
    gtk4 = {
      extraConfig.gtk-application-prefer-dark-theme = true;
    };
  };

  dconf.settings."org/gnome/desktop/interface" = {
    color-scheme = "prefer-dark";
    gtk-theme = "Adwaita-dark";
  };
}
