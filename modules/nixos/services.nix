{ pkgs,pkgs-stable, ... }:
{
  services.flatpak.enable = true;
  services.dbus.enable = true;
  services.displayManager.ly.enable = true;
  services.desktopManager.gnome.enable = true;
  programs.hyprland = {
    enable = true;
    withUWSM = true;
    xwayland.enable = true;
  };
  services.gvfs.enable = true;
  programs.xfconf.enable = true;
  services.samba.enable = true;
  services.udev.packages = with pkgs; [ platformio-core.udev ];
  services.tailscale.enable = true;
  services.satisfactory-server.enable = false;
  services.mullvad-vpn.enable = true;
  services.mullvad-vpn.package = pkgs-stable.mullvad-vpn;
}
