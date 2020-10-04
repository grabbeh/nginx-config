server {
  listen 80;
  root /var/www/inconsequentialism.com/public;
  index index.html;
  server_name inconsequentialism.com www.inconsequentialism.com;
  location / {
    try_files $uri $uri/ =404;
  }
 }
