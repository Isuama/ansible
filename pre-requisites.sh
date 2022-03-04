#!/bin/bash

sudo apt update
sudo apt install ansible -y
ansible --version
sudo chown -R vagrant:vagrant /etc/ansible/

echo "export ANSIBLE_CONFIG=/home/$(whoami)/ansible/ansible.cfg" >> ~/.profile

sudo apt install python3-pip # only in ansible master
sudo apt install python3-docker # only in ansible master

sed -i 's/isuru/$(whoami)/g' ~/ansible/ansible.cfg
sed -i 's/isuru/$(whoami)/g' ~/ansible/group_vars/all/common.yml