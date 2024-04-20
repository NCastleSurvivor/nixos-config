{ config ,lib, ...}:
{
	programs.zsh = {
		enable = true;
		ohMyZsh = {
			enable = true;
			plugins = [
				"sudo"
				"git" 
				"z" 
				"extract" 
				];
			theme = "fino-time";
			};
	};
}
