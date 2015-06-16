#!/bin/bash
echo "installing git"
sudo apt-get install git -y
echo "installing ansible"
sudo apt-get install software-properties-common -y
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get install ansible -y
echo "installation is done"
