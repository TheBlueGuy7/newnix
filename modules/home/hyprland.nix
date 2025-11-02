{ lib, pkgs, ... }:
{
  home.packages = with pkgs; [
    swww
    grimblast
    hyprpicker
    grim
    slurp
    wl-clip-persist
    cliphist
    wf-recorder
    glib
    wayland
    direnv
    hyprshot
    hyprpaper
    hyprpolkitagent
    pavucontrol
    wl-clipboard
    
  ];
  systemd.user.targets.hyprland-session.Unit.Wants = [
    "xdg-desktop-autostart.target"
  ];

  programs.hyprlock.enable = true;

  home.file.".config/hypr".source = ../dotfiles/hypr;
}
