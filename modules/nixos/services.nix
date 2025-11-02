{ pkgs, ... }:
{
  services.flatpak.enable = true;
  services.dbus.enable = true;
  services.displayManager.ly.enable = true;
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };
  services.gvfs.enable = true;
  programs.xfconf.enable = true;
}
