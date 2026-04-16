#!/bin/bash
set -e

apt update -y
apt install nginx git -y

systemctl enable nginx
systemctl start nginx

rm -rf /var/www/html/*
git clone https://github.com/obinnaozigbu-svg/devops-asg.git /var/www/html

systemctl restart nginx