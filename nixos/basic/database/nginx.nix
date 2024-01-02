{ config, pkgs, ... }:{
    service.nginx ={
        package = pkgs.nginxStable.override { openssl = pkgs.libressl; };
        enable = true;
        virtualHosts."localhost" ={
            root = "/home/zero/nginx/"
        }
    }
}