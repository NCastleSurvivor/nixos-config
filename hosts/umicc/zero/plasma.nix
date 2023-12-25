# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, lib, ... }:
{
	# Enable the X11 windowing system.
  	services.xserver = { 
		  enable = true;
  		displayManager = {
			defaultSession = "plasmawayland";
			sddm.enable = true;
			sddm.wayland.enable = true;
			# Enable the KDE Plasma Desktop Environment.
  			sddm.autoNumlock = false;
			};
  		desktopManager.plasma5.enable = true;
	};
  	environment.plasma5.excludePackages = with pkgs.libsForQt5;  [
		elisa
		gwenview
		okular
		print-manager
		konsole 	
		qmlkonsole
		plasma-browser-integration
	];

}
