# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, lib, ... }:
{
	fonts =  {
    	enableDefaultPackages = false;
    	fontconfig.enable = true;
    	fontDir.enable = true;
	packages = with pkgs; 
      lib.mkForce [
        (nerdfonts.override { fonts = [ "Hack" "FiraCode" ]; })

        font-awesome
        maple-mono-SC-NF
        noto-fonts
        noto-fonts-cjk-sans
        noto-fonts-cjk-serif
        noto-fonts-emoji
        noto-fonts-extra
        wqy_microhei
        wqy_zenhei
      ];
    	fontconfig.defaultFonts = {
      	serif = [ "Noto Serif" "Noto Color Emoji" ];
				sansSerif = [ "Noto Sans" "Noto Color Emoji" ];
				monospace = [ "Maple Mono SC NF" "Hack Nerd Font Mono" "Noto Color Emoji" ];
				emoji = [ "Noto Color Emoji" ];
    		};
  	};
}
