#!/bin/bash

apt-get install -y aptitude
aptitude install fish

curl -sS https://starship.rs/install.sh | sh

mkdir -p $HOME/.config/fish
printf "\n\nstarship init fish | source" >> $HOME/.config/fish/config.fish

cp $(realpath ./starship.toml) $HOME/.config/startship.toml

# raw github file: https://raw.githubusercontent.com/bogh/sys-installer/fa6e00e5afaa6c72a1c49bde1d766ec1810916db/ubuntu/starship.sh
