{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-25.05";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprpaper = {
       url = "github:hyprwm/hyprpaper";
       inputs.nixpkgs.follows = "nixpkgs";
   };

    polymc.url = "github:PolyMC/PolyMC";

    rose-pine-hyprcursor = {
      url = "github:ndom91/rose-pine-hyprcursor";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.hyprlang.follows = "hyprland/hyprlang";
    };

    hyprland.url = "github:hyprwm/hyprland?ref=v0.36.0";

  };


  outputs = { self, nixpkgs, nixpkgs-stable, home-manager, ... } @inputs:
  let 
    system = "x86_64-linux";
    pkgs-stable = import nixpkgs-stable {
      inherit system;
      config.allowUnfree = true;
    };
    pkgs = import nixpkgs {
      inherit system;
      config.allowUnfree = true;
    };

  in {
    nixosConfigurations.radiator-nixos = nixpkgs.lib.nixosSystem {
	    specialArgs = {
        
	      inherit inputs system pkgs-stable;
	    };

	    modules = [
	      ./hosts/default/configuration.nix
	      inputs.home-manager.nixosModules.default
      ];
    };
  };
}
