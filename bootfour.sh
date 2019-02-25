#!/bin/bash
(mkdir -p ~/src; cd ~/src && git clone git://github.com/openaps/oref0.git || (cd oref0 && git checkout master && git pull)
echo "Press Enter to run oref0-setup with the current release (master branch) of oref0,"
read -p "or press ctrl-c to cancel. " -r
cd && ~/src/oref0/bin/oref0-setup.sh
#After first curl
bash /tmp/openaps-install.sh
)