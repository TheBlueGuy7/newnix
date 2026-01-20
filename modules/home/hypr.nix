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
    direnv
    pavucontrol
    wl-clipboard

    pyprland
    hyprpicker
    hyprcursor
    hypridle
    hyprshot
    hyprpaper
    hyprsunset
    hyprpolkitagent
    
  ];
  systemd.user.targets.hyprland-session.Unit.Wants = [
    "xdg-desktop-autostart.target"
  ];

  programs.hyprlock.enable = true;
  services.hypridle.enable = true;

  home.file.".config/hypr".source = ../dotfiles/hypr/hypr;

  programs.rofi.enable = true;
  home.file.".config/rofi".source = ../dotfiles/hypr/rofi;

  programs.waybar.enable = true;
  home.file.".config/waybar".source = ../dotfiles/hypr/waybar;

  services.dunst.enable = true;
  home.file.".config/dunst".source = ../dotfiles/hypr/dunst;
}
