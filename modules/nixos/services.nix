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
  services.samba.enable = true;
  services.udev.packages = with pkgs; [ platformio-core.udev ];
  services.tailscale.enable = true;
  services.satisfactory-server.enable = false;
}
