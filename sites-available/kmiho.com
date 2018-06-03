server {
  listen 80;
  root /var/www/kmiho.com;
  index index.html;
  server_name kmiho.com www.kmiho.com;
  location / {
    try_files $uri $uri/ =404;
  }
}
