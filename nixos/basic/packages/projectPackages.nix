{ config, pkgs, lib, ... }:{
  environment.systemPackages = with pkgs;[
    dbeaver
    # vue
    jdk8
    #maven
    vscode
    postman
    nodejs_18
	  jetbrains.idea-ultimate
  ];
} 
