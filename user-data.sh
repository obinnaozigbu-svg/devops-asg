#!/bin/bash
apt update -y
apt install nginx git -y

systemctl enable nginx
systemctl start nginx

cd /var/www/html
rm -rf *

git clone https://github.com/obinnaozigbu-svg/devops-asg.git .

systemctl restart nginx