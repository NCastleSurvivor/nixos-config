{ config, pkgs,  ... }:{
  environment.systemPackages = (with pkgs;[
      gnome.gnome-settings-daemon
  ]) ++ (with pkgs.gnomeExtensions; [
      appindicator #为 Shell 添加 AppIndicator、KStatusNotifierItem 和传统托盘图标支持
      user-themes #使用第三方主题
      screenshot-tool #截图插件
      burn-my-windows #有趣的窗口打开/关闭动画效果
      blur-my-shell # 调整活动窗口插件插件
      clipboard-indicator  # 剪贴板插件
      coverflow-alt-tab  
      transparent-window-moving # 实现移动或者调整窗口时的窗口透明化效果
  ]);
}