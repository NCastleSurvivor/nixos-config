# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, lib, ... }:
{
  		services.displayManager = {
			#defaultSession = "plasmawayland";
			sddm.enable = true;
			sddm.wayland.enable = true;
			# Enable the KDE Plasma Desktop Environment.
  			sddm.autoNumlock = false;
			};
		
	services.desktopManager.plasma6.enable = true;
  	environment.plasma6.excludePackages = with pkgs.kdePackages;  [
		elisa
		gwenview
		okular
		print-manager
		konsole 	
		qmlkonsole
		plasma-browser-integration
	];
}
