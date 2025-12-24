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
    hyprlock
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

  home.file.".config/hypr".source = ../dotfiles/hypr;
}
