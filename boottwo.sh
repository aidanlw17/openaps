#!/bin/bash
(apt-get -o Acquire::ForceIPv4=true install -y sudo
#My input
sudo apt-get remove npm
sudo apt-get remove nodejs-legacy
sudo apt-get remove nodejs
sudo apt-get install curl software-properties-common
curl -sL https://deb.nodesource.com/setup_10.x | sudo bash -
sudo apt-get install nodejs
)