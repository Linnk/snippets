#!/bin/bash
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
sudo locale-gen en_US en_US.UTF-8
sudo ee update
sudo apt-get install python-pip
sudo -H pip install setuptools
sudo -H pip install --upgrade setuptools
sudo -H pip install --upgrade pip
sudo apt update && sudo apt upgrade -y
clear
sudo ee site update --le=renew --all 2> /dev/null
sudo ee clean --all
