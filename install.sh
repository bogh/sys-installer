#!/bin/bash
set -ex
sudo apt-get update
sudo apt-get install -y
sudo apt-get install -y aptitude vim git gitk mc neovim fish terminator \
    gnome-tweaks build-essential \
    barrier \

# Libjpeg support, for Pillow mainly
sudo apt-get install -y libjpeg-dev libfreetype6 libfreetype6-dev zlib1g-dev
sudo apt-get install -y libxml2-dev libxslt1-dev libexif-dev exiftool libmagickwand-dev python3-exif
# apt-get install -y libmysqlclient-dev postgresql-client
sudo apt-get install -y postgresql-server-dev-all

# aptitude install -y nodejs npm

sudo apt-get install -y python3-pip python3-dev

pip3 install pipenv

./install/code.sh
./installers/docker.sh
./installers/flatpak.sh
./installers/fonts.sh
./installers/pyenv.sh
./installers/node.sh
./installers/fish.sh
