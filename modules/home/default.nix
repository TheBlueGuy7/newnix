{ pkgs, ... }:
{
  imports = [
    ./gtk.nix
    ./qt.nix
    #./mime.nix
    ./cursor.nix
    ./zsh.nix
    ./hyprland.nix
    ./alacritty.nix
    ./rofi.nix
    ./dunst.nix
    ./waybar.nix
    ./neovim.nix
  ];
  home.sessionVariables = {
    GIO_EXTRA_MODULES = "${pkgs.gvfs}/lib/gio/modules";
  };
}
