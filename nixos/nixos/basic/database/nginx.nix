{ config, pkgs, ... }:{
    services.nginx ={
        user = "zero";
        package = pkgs.nginxStable.override { openssl = pkgs.libressl; };
        enable = false;
        virtualHosts."localhost" ={
            listen = [{port = 90; addr = "localhost"; ssl = false;}];
            root = "/home/zero/nginx/tlias";
            locations = {
            "~/tlias" ={
                index = "index.html index.htm";
                root = "/home/zero/nginx/tlias";
                # proxyPass = "http://localhost:90/tlias";
                # extraConfig = ''
                # rewrite ^ /index.html;
                # '';
            };
            "^~ /api/" = {
                proxyPass = "http://localhost:8080";
                extraConfig = ''
                rewrite ^/api/(.*)$ /$1 break;
                '';
            };
            "/50x.html" ={
                root = "/home/zero/nginx/tlias/html";
            };
        };
        };
    };
}