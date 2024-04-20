{ config, pkgs, lib, user, ... }:
{
  	# Enable cups support
  	services.printing.enable = false;
  	# Enable touchpad support (enabled default in most desktopManager).
  	# services.xserver.libinput.enable = true;

	  # Define a user account. Don't forget to set a password with ‘passwd’.
  	users = {
		defaultUserShell = pkgs.zsh;
		users.${user.name} = {
    		isNormalUser = true;
    		description = user.userfullname;
    		extraGroups = [ "networkmanager" "wheel" "adbusers" "networkmanager" "video" "audio"];
    		packages = with pkgs; [
      			# kate #依赖konsole,导致无法卸载konsole
    		];
  	};
	};
}
