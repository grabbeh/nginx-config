server {
	server_name waterfountainchat.com www.waterfountainchat.com;
	location / {
		proxy_pass http://127.0.0.1:6000;
	}
}
