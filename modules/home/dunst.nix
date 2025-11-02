{ ... }:
{
  services.dunst.enable = true;
  home.file.".config/dunst".source = ../dotfiles/dunst;
}
