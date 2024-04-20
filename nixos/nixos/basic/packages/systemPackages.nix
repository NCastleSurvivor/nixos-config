{ config, pkgs, lib, ... }:
{
  # Allow unfree packages
  nixpkgs.config= {
    allowUnfree = true;
	  permittedInsecurePackages = [
    		"imagemagick-6.9.12-68"
    		# "openssl-1.1.1t"
    		# "openssl-1.1.1u"
    		"openssl-1.1.1w"
  	];
  };
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    wechat-uos
    qq
    git
    vim
    #typora	
    wget
    android-tools
    ntfs3g
    pciutils
    #papirus-icon-theme
    zsh
    alacritty
    libreoffice-qt-fresh
    vscode
    #clash-verge
    openssl
    #glxinfo
  	];
  
}
