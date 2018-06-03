server {
  listen 80;
  root /var/www/kmiho/public;
  index index.html;
  server_name hilodoes.com www.hilodoes.com;
  location / {
    try_files $uri $uri/ =404;
  }
}
