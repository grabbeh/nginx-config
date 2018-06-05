server {
  listen 80;
  root /var/www/kmiho/public;
  index index.html;
  server_name kmiho.grabeh.net www.kmiho.grabeh.net;
  location / {
    try_files $uri $uri/ =404;
  }
}
