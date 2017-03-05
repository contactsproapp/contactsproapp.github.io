#!/usr/bin/env bash

# Install node & update npm
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install nodejs -y
sudo npm install npm --global

# Install yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update -y
sudo apt-get install yarn -y

# Install dependency version updater globally
sudo npm rm npm-check-updates --global
sudo yarn global add npm-check-updates

# Install gulp globally
sudo npm rm gulp gulp-cli --global
sudo yarn global add gulp gulp-cli
