#!/bin/bash
(sudo apt-get -o Acquire::ForceIPv4=true update && sudo apt-get -o Acquire::ForceIPv4=true -y upgrade
sudo apt-get -o Acquire::ForceIPv4=true install -y git npm python python-dev software-properties-common python-numpy python-pip watchdog strace tcpdump screen acpid vim locate jq lm-sensors && \
#if getent passwd edison > /dev/null; then sudo apt-get -o Acquire::ForceIPv4=true install -y nodejs-legacy; fi && \
sudo pip install -U openaps && \
sudo pip install -U openaps-contrib && \
sudo openaps-install-udev-rules && \
sudo activate-global-python-argcomplete && \
sudo npm install -g json oref0 && \
echo openaps installed && \
openaps --version
)