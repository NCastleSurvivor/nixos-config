{ config, pkgs, lib, ... }:{
  environment.systemPackages = with pkgs;[
    dbeaver
    # vue
    jdk8
    vscode
    # postman
    insomnia
    nodejs_18
  jetbrains.idea-ultimate
  ];
} 
