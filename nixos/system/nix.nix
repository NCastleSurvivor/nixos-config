# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, lib, ... }:

{
	nixpkgs.config.allowUnfree = true;
	nix.settings.experimental-features = ["nix-command" "flakes"];
  # Automatic Garbage Collection
  nix.gc = {
		automatic = true;
		dates = "daily";
		options = "--delete-older-than 1d";	
	};
}
