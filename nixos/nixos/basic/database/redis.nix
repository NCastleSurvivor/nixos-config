{ config, pkgs, ... }:{
  services.redis = {
    package = pkgs.redis;
      servers."talos" = {
        # user = "root";
        requirePass = "fangsheng@0518";
        port = 6379;
        # logfile = "/var/log/redis.log";
        enable = true;
        databases = 16;
        # unixSocket = "/run/redis-authelia-main/redis.sock";
    };
  };
}