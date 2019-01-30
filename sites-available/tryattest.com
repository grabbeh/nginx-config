# Default server configuration
#
server {
	listen 80;
	server_name tryattest.com www.tryattest.com;
	location / {
		proxy_pass http://127.0.0.1:3000;
	}

    listen 443 ssl; # managed by Certbot
    ssl_certificate /etc/letsencrypt/live/mbg.codes/fullchain.pem; # managed by Certbot
    ssl_certificate_key /etc/letsencrypt/live/mbg.codes/privkey.pem; # managed by Certbot
    include /etc/letsencrypt/options-ssl-nginx.conf; # managed by Certbot
    ssl_dhparam /etc/letsencrypt/ssl-dhparams.pem; # managed by Certbot



    if ($scheme != "https") {
        return 301 https://$host$request_uri;
    } # managed by Certbot


    # Redirect non-https traffic to https
    # if ($scheme != "https") {
    #     return 301 https://$host$request_uri;
    # } # managed by Certbot



}
