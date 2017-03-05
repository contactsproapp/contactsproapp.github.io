#!/usr/bin/env bash

# add custom content to .profile
cat << FOE >> "$_HOME_DIR/.profile"

# navigate to vagrant folder upon login
cd /vagrant

FOE
