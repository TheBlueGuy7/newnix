{ pkgs,pkgs-stable, ... }:
{
  services.flatpak.enable = true;
  services.dbus.enable = true;
  services.displayManager.sddm.enable = true;
  # services.displayManager.sddm.wayland.enable = true;
  services.desktopManager.gnome.enable = true;
  services.xserver.enable = true;
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
  #services.sunshine = {
  #  enable = true;
  #  autoStart = true;
  #  capSysAdmin = true;
  #  openFirewall = true;
  #  
  #};

  virtualisation.virtualbox.host.enable = true;
  users.extraGroups.vboxusers.members = [ "blueguy" ];
  programs.nix-ld.enable = true;
  environment.systemPackages = with pkgs; [
  ollama-cuda
  cudaPackages.cudatoolkit
  openclaw
  #ollama
  ];
}
