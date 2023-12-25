{ config, pkgs, ... }:
{
  services = {
    mysql = {
      user = "zero";
      enable = true;
      group = "wheel";
      # Which MySQL derivation to use. 
      package = pkgs.mariadb;
      # The data directory for MySQL.
      dataDir = "/var/lib/mysql";
      # passwordFile = "/run/secrets/mysql-auth-db-passwd";
      # Override the configuration file used by Mysql.
      # configFile = ''
      
      # '';
      settings = {
        mysqld = {
          key_buffer_size = "6G";
          table_cache = 1600;
          log-error = "/var/log/mysql_err.log";
          plugin-load-add = [ "server_audit" "ed25519=auth_ed25519" ];
        };
        #  mysqldump = {
        #   quick = true;
        #   max_allowed_packet = "16M";
        # };
      };
    };
    athens.index.mysql.port = 3306;
    # athens.index.mysql.password = "fangsheng@0518";
    # athens.index.mysql.user = "root";
  };
}