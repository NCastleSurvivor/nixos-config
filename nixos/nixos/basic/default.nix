{
  imports = [
    # 存放mysql等服务配置
    #./database
    # 存放蓝牙等硬件设备的配置
    ./hardware
    # 存放字体、fcitx输入法等配置
    ./services
    # 系统用户配置
    ./users.nix
    ./packages/systemPackages.nix
  ];
}