#!/usr/bin/env bash

# install & configure apache

# stop apache
sudo service apache2 stop

    # update apache
    sudo apt-get update -y
    sudo apt-get install apache2 -y

    # clear document root and link to the /vagrant directory
    sudo rm -rf "$_DOC_ROOT_DIR"
    sudo ln -s "$_VAGRANT_DIR" "$_DOC_ROOT_DIR"

    # make apache to start automatically after reboot
    sudo update-rc.d apache2 enable

# restart apache
sudo service apache2 restart
