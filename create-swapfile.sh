#!/bin/bash

sudo swapoff -a
sudo dd if=/dev/zero of=/swapfile bs=1G count=16
sudo mkswap /swapfile
sudo chmod 0600 /swapfile
sudo swapon /swapfile
sudo echo "/swapfile swap swap defaults 0 0" >> /etc/fstab
echo "don't forget to remove the old swapfile and delete it from /etc/fstab"
