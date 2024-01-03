{ config, pkgs, ... }:{
  services.redis = {
    package = pkgs.redis;
      services."redis" = {
      user = "redis";
      requirePassFile = "/run/keys/redis-password";
      port = 6379;
      logfile = "/var/log/redis/redis.log";
      enable = true;
      databases = 16;
    };
  };
}