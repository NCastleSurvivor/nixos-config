# Configuration for bluetooth
{ config, pkgs, ... }:
{
	hardware = {
		bluetooth = {
			enable = true;
			powerOnBoot = true;
			settings = {
				General = {
					Enable = "Source,Sink,Media,Socket";
					};
				};
		};
	};
}
