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

    hyprlang = {
      url = "github:hyprwm/hyprlang";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    polymc.url = "github:PolyMC/PolyMC";

    rose-pine-hyprcursor = {
      url = "github:ndom91/rose-pine-hyprcursor";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.hyprlang.follows = "hyprlang";
    };

    hyprland = {
      url = "github:hyprwm/hyprland";
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };


  outputs = { 
    self, 
    nixpkgs, 
    nixpkgs-stable, 
    home-manager, 
    hyprpaper, 
    polymc, 
    hyprlang, 
    rose-pine-hyprcursor, 
    hyprland,
    ... 
  } @inputs:

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

    specialArgs = {    
	    inherit inputs;
      inherit pkgs-stable;
    };

  in 
  {
    nixosConfigurations = {
      
        "desktop" = nixpkgs.lib.nixosSystem {
          inherit system;
          inherit specialArgs;
          modules = [
            ./hosts/desktop/configuration.nix
            inputs.home-manager.nixosModules.default 
          ];
        };
        
        "laptop" = nixpkgs.lib.nixosSystem {
          inherit system;
          inherit specialArgs;
          modules = [
            ./hosts/laptop/configuration.nix
            inputs.home-manager.nixosModules.default 
          ];
        };
        
      };
  };
}
