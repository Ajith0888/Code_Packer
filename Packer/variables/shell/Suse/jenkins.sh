#!/bin/bash
#This script is helps to install jenkins on Suse
sleep 300
sudo zypper up -y
sudo dd if=/dev/zero of=/swapfile bs=1024 count=1048576
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
echo '/swapfile none swap sw 0 0' >> /etc/fstab
sudo zypper addrepo -G -f http://pkg.jenkins.io/opensuse-stable/ jenkins
sudo zypper install -y jenkins