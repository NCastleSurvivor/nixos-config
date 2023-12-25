{ config, pkgs, lib, ... }:
{
	# Bootloader.
	#boot.loader.systemd-boot.enable = true;
	#boot.loader.efi.canTouchEfiVariables = true;
	boot.kernelParams = [
		"loglevel=0"
		"quiet"	
		];
	boot = {
		kernelPackages = pkgs.linuxPackages_latest;
		# initrd.kernelModules = [ "nvidia" ];
	};
	boot.loader = {
		efi.efiSysMountPoint = "/boot/efi";
		timeout = 1;
		grub = {
			enable = true;
			efiSupport = true;
			device = "nodev";
			configurationName = "NixOS";
			useOSProber = true;
			efiInstallAsRemovable = true;
		};
  	};
		system.stateVersion = config.system.nixos.release;
}
