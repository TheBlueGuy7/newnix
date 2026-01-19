{ pkgs, ... }:
{
  imports = [
    ./themes
    #./mime.nix
    ./cursor.nix
    ./zsh.nix
    ./hyprland.nix
    ./alacritty.nix
    ./rofi.nix
    ./dunst.nix
    ./waybar.nix
    ./neovim.nix
    ./vnc.nix

    ./apps.nix
    ./developement.nix
    ./pentesting.nix
    ./gaming.nix
    ./utils.nix
  ];
  
}
