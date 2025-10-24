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
  wayland.windowManager.hyprland = {
    enable = true;

    xwayland = {
      enable = true;
    };
  };

  programs.hyprlock.enable = true;
  services.dunst.enable = true;
  programs.rofi.enable = true;
  programs.waybar.enable = true;

  home.file.".config/hypr".source = ../dotfiles/hypr;
}
