{ pkgs, ... }:
{
 
  home.packages = with pkgs; [
  firefox
	thunderbird
	qq
	tree
	which
	htop
	vscode
#  neofetch
	fastfetch
    # environment settings
	jdk8
	jetbrains.idea-ultimate
  onlyoffice-bin

  ];
}

