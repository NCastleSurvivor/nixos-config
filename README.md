# NixOS配置

### 介绍

NCastleSurvivor的NixOS配置文件

### 使用说明

首先先生成默认配置文件

```
nixos-generate-config --root /mnt
```

再git clone下来本仓库并用新生成的hardware-configuration.nix替换到仓库内的配置

```
cp /mnt/etc/nixos/hardware-configuration.nix ./configuration/hardware-configuration.nix
```



如果是全新安装的话，那么需要先安装git

```
nix-shell -p git
```

然后再运行

```
nixos-install --flake .#zero --substituters https://mirror.sjtu.edu.cn/nix-channels/store
```

