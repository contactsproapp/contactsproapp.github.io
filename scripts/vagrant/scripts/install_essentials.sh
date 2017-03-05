#!/usr/bin/env bash

# install essentials
sudo apt-get install python-software-properties \
                     build-essential \
                     libssl-dev \
                     libffi-dev \
                     nano \
                     curl \
                     mc \
                     graphicsmagick \
                     -y

# update after essentials (especially python-software-properties)
sudo apt-get update -y

# update git
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt-get update -y

sudo apt-get install git -y
