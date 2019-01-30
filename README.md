# nginx-config

This is just a place to track the nginx config I use on my VPS. It means I don't have to fiddle with using nano on the command line. Nothing special!

To add new site:

- Add config to 'Sites-available' folder
- Git pull from VPS
- Create symlink using below command:

```sudo ln -s /etc/nginx/sites-available/example.com /etc/nginx/sites-enabled/
    
- Then restart nginx using:

```systemctl restart nginx
