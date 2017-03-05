#!/usr/bin/env bash

export _USERNAME="ubuntu"
export _HOME_DIR="/home/$_USERNAME"
export _VAGRANT_DIR="/vagrant"
export _PROVISION_DIR="$_VAGRANT_DIR/scripts/vagrant"
export _SCRIPTS_DIR="$_PROVISION_DIR/scripts"
export _DOC_ROOT_DIR="/var/www/html"

# Update before provisioning
sudo apt-get update -y

# Install scripts
"$_SCRIPTS_DIR/install_essentials.sh"
"$_SCRIPTS_DIR/install_apache.sh"
"$_SCRIPTS_DIR/install_python.sh"
"$_SCRIPTS_DIR/install_node.sh"
"$_SCRIPTS_DIR/add_profile_content.sh"
