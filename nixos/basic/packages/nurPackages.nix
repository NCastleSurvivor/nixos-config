{ config, ... }:

{
  users.users.zero.packages = with config.nur.repos; [
    
    # xddxdd.dingtalk
   xddxdd.wechat-uos-bin
   xddxdd.bilibili 
  ];
}

