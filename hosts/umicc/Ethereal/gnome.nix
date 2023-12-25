{ config, pkgs, lib, ... }:{
  imports = [./gnomeExtensions.nix];
  services.xserver = {
    enable = true;
    displayManager = {
      gdm= {
        enable = true;
        wayland = true;
      };
      # defaultSession
    };
    desktopManager.gnome.enable = true;
  };
  # 启用gnome-settings-daemon的守护程序
  services.gnome.gnome-settings-daemon.enable = true;
  # Enable default programs
  programs.dconf.enable = true;
  # 排除安装的gnome软件包
  environment.gnome.excludePackages = (with pkgs; [
  gnome-photos
  gnome-tour
]) ++ (with pkgs.gnome; [
  cheese # webcam tool
  gnome-music
  gnome-terminal
  gedit # text editor
  epiphany # web browser
  geary # email reader
  evince # document viewer
  gnome-characters
  totem # video player
  tali # poker game
  iagno # go game
  hitori # sudoku game
  atomix # puzzle game
]);
}