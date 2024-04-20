{ pkgs, ... }:
{
 
  home.packages = with pkgs; [
  	brave
		thunderbird
		tree
		which
		htop
		fastfetch

  ];
}

