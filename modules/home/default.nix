{ pkgs, ... }:
{
  imports = [
    ./themes
    #./mime.nix
    ./cursor.nix
    ./zsh.nix
    ./hypr.nix
    ./alacritty.nix
    ./neovim.nix
    ./vnc.nix

    ./apps.nix
    ./developement.nix
    ./pentesting.nix
    ./gaming.nix
    ./utils.nix
  ];
  
}
