{ config, ... }: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    # enableAutosuggestions = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    initContent = ''
      fastfetch
    '';

    shellAliases =
      let
        flakeDir = "/home/nix";
        host = "desktop";
      in {
      rb = "sudo nixos-rebuild switch --flake ${flakeDir}#${host}";
      upd = "nix flake update --flake ${flakeDir}#${host}";
      upg = "sudo nixos-rebuild switch --upgrade --flake ${flakeDir}#${host}";
      del-garbage = "sudo nix-collect-garbage -d";
      


      conf = "nvim ${flakeDir}/hosts/default/configuration.nix";
      homeconf = "nvim ${flakeDir}/hosts/default/home.nix";
      hyprconf = "nvim ${flakeDir}/dotfiles/hypr/hyprland.conf";

      ls = "eza";
      la = "eza -la";
      ll = "eza -l";

      v = "nvim";
      se = "sudoedit";
      ff = "fastfetch";
    };

    history.size = 10000;
    history.path = "${config.xdg.dataHome}/zsh/history";

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "sudo" "eza" "fzf" ];
      theme = "agnoster";
      # theme = "xiong-chiamiov-plus";
      # theme = "darkblood";
    };
  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };
}
