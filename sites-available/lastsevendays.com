server {
	server_name lastsevendays.com www.lastsevendays.com;
	location / {
		proxy_pass http://127.0.0.1:5000;
	}
}
