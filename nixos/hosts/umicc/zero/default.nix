{ inputs, lib, config, pkgs, user, ... }:{
  imports = [
    # 基础配置文件
    ../../../nixos/basic
    # nixos-generate-config --root /mnt生成的默认配置文件
    ./hardware-configuration.nix
    # nixos基础设置与grub引导配置
    ../../../nixos/system
    # 引入plasma桌面配置
    ./plasma.nix
  ];
  # 配置plasma桌面环境下面的hostname,供安装时选择
  networking.hostName = "zero"; # Define your hostname.
}