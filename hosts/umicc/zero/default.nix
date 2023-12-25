{ inputs, lib, config, pkgs, user, ... }:{
  imports = [
    ../../../nixos/basic
    ./hardware-configuration.nix
    ../../../nixos/system
    ./plasma.nix
  ];
  networking.hostName = "zero"; # Define your hostname.
}