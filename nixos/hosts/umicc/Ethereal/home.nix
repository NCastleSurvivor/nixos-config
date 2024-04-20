{ config, pkgs, ... }:
{
	imports = [
		../../../nixos/basic/packages/homePackages.nix		
	];

	programs.home-manager.enable = true;
	home.username = "zero";
	home.homeDirectory = "/home/zero";
	home.stateVersion = "24.05";
	
	fonts.fontconfig.enable = true;
	
	# My git account settings
	programs.git = {
		enable = true;
		userName = "NCastleSurvivor";
		userEmail = "1439345229@qq.com";
		};

}
