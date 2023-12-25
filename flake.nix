{
  description = "ZERO's NixOS Flake";

  # Work-in-progress: refer to parent/sibling flakes in the same repository
  # inputs.c-hello.url = "path:../c-hello";

  outputs = inputs @ { 
		self, 
		nixpkgs, 
		home-manager, 
		nur, 
		impermanence,
		hyprland, 
		... 
	}: 
	(let
		user = {
			name = "zero";
			userfullname = "zero";
			email = "ncastlesurvivor@qq.com";
		};
		system = "x86_64-linux";
		pkgs = inputs.nixpkgs.legacyPackages.x86_64-linux;
		mkSystem = hostname: system: pkgs: modulesFn:
      pkgs.lib.nixosSystem {
        system = system;
        modules = [
          ./hosts/umicc/${hostname}
        home-manager.nixosModules.home-manager
          {
            home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;
            extraSpecialArgs = { inherit inputs user; };
            users.${user.name} = import ./hosts/umicc/${hostname}/home.nix;
            };
            }
				nur.nixosModules.nur
	        ({ config, ... }: {
            imports = [
            ./nixos/basic/packages/nurPackages.nix
            ];})
          ] ++ modulesFn;
          specialArgs = { inherit inputs user; };
        };
	in {
		    nixosConfigurations = {
        zero = mkSystem "zero" "x86_64-linux" inputs.nixpkgs
          [ 
            impermanence.nixosModules.impermanence
          ];
        Ethereal = mkSystem "Ethereal" "x86_64-linux" inputs.nixpkgs
          [ impermanence.nixosModules.impermanence ];
      };

	  });


inputs = {
    # Official NixOS package source, using nixos's stable branch by default
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    # nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    # nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";

    # home-manager, used for managing user configuration
    home-manager = {
      url = "github:nix-community/home-manager";
      # url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };

		# impermanence will set up bind mounts and links as needed. 
    impermanence.url = "github:nix-community/impermanence";

    hyprland = {
      url = "github:hyprwm/Hyprland";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

	  nixConfig = {
    experimental-features = [ "nix-command" "flakes" ];
    substituters =  [
      # replace official cache with a mirror located in China
      "https://mirrors.ustc.edu.cn/nix-channels/store"
      # "https://mirrors.sjtu.edu.cn/nix-channels/store"
      # "https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store"
      "https://cache.nixos.org"
      "https://hyprland.cachix.org"
    ];
    extra-substituters = [ "https://nix-community.cachix.org" ];
    extra-trusted-public-keys = [
      "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
      "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="
    ];
  };
  }

