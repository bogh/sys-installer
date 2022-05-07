#!/bin/bash
set -ex
sudo apt-get update
sudo apt-get install -y aptitude
sudo apt-get install -y
sudo apt-get install -y vim git gitk mc neovim fish terminator \
    gnome-tweaks build-essential
# apt-get install -y meld
# apt-get install -y filezilla
# apt-get install -y deluge
# apt-get install -y copyq
# aptitude install -y docker.io # libmagickwand-dev

# Libjpeg support, for Pillow mainly
sudo apt-get install -y libjpeg-dev libfreetype6 libfreetype6-dev zlib1g-dev
sudo apt-get install -y libxml2-dev libxslt1-dev libexif-dev exiftool libmagickwand-dev python3-exif 
# apt-get install -y libmysqlclient-dev postgresql-client 
sudo apt-get install -y postgresql-server-dev-all

# aptitude install -y nodejs npm

sudo apt-get install -y python3-pip python3-dev

pip3 install pipenv

./install_flatpak.sh

./install_docker.sh
./install_fonts.sh
./install_pyenv.sh
./install_node.sh
./install_fish.sh
# ./install_code.sh
