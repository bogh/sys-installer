#!/bin/bash

yay -S starship

mkdir -p $HOME/.config/fish
printf "\n\nstarship init fish | source" >> $HOME/.config/fish/config.fish

ln -s $(realpath ../configs/starship.toml) $HOME/.config/
