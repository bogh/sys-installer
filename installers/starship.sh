#!/bin/bash

curl -sS https://starship.rs/install.sh | sh

mkdir -p $HOME/.config/fish/config.fish
printf "\n\nstarship init fish | source" >> $HOME/.config/fish/config.fish

ln -s $(realpath ../configs/starship.toml) $HOME/.config/
