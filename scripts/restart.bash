#!/usr/bin/env bash

# I want to make sure that the directory is clean and has nothing left over from
# previous deployments. The servers auto scale so the directory may or may not
# exist.
sudo kill $(cat /opt/nginx/logs/nginx.pid)

sudo rm -rf /home/ec2-user/json/tmp
sudo mkdir /home/ec2-user/json/tmp
sudo chmod 777 /home/ec2-user/json/tmp
sudo chmod 777 /home/ec2-user/json/log
sudo chmod 777 /home/ec2-user/json/Gemfile.lock

sudo /opt/nginx/sbin/nginx
