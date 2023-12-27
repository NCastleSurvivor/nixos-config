{ pkgs, ... }:
{
 
  home.packages = with pkgs; [
  firefox
	thunderbird
	qq
	tree
	which
	htop
#  neofetch
	fastfetch
    # environment settings
  onlyoffice-bin
	telegram-desktop
  ];
}

