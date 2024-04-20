{ config, lib, pkgs, ... }:
{
	hardware.opengl = {
		enable = true;
		driSupport = true;
		driSupport32Bit = true;
	};
	 hardware.nvidia = {

    		# Modesetting is required.
    		modesetting.enable = true;

    		# Nvidia power management. Experimental, and can cause sleep/suspend to fail.
    		powerManagement.enable = false;
    		# Fine-grained power management. Turns off GPU when not in use.
    		# Experimental and only works on modern Nvidia GPUs (Turing or newer).
    		powerManagement.finegrained = false;

    		open = false;

    		# Enable the Nvidia settings menu,
		# accessible via `nvidia-settings`.
    		nvidiaSettings = false;

    		# Optionally, you may need to select the appropriate driver version for your specific GPU.
    		package = config.boot.kernelPackages.nvidiaPackages.stable;

		prime = {
			offload.enable = true;
			offload.enableOffloadCmd = true;
			nvidiaBusId = "PCI:1:0:0";
			amdgpuBusId = "PCI:6:0:0";
		};
  };
		services.xserver.videoDrivers = [ "nvidia" "amdgpu"];
}
