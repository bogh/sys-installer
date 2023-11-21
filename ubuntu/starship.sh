#!/bin/bash

apt-get install -y aptitude
aptitude install fish

curl -sS https://starship.rs/install.sh | sh

mkdir -p $HOME/.config/fish
printf "\n\nstarship init fish | source" >> $HOME/.config/fish/config.fish

# echo $TOML_CONFIG > $HOME/.config/startship.toml

# raw github file: https://raw.githubusercontent.com/bogh/sys-installer/main/ubuntu/starship.sh
