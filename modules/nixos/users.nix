{ pkgs, ... }:
{
  
  programs.zsh.enable = true;

  users = {
    users.blueguy = {
      isNormalUser = true;
      extraGroups = [ "wheel" "libvirtd" ];
      initialPassword = "1234";
      shell = pkgs.zsh;
    };
  };
}
