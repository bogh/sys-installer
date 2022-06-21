#!/bin/bash

sudo pacman -Sy --needed base-devel git

git clone https://aur.archlinux.org/yay-git.git /tmp/yay-git
cd /tmp/yay-git

makepkg -si


yay -Sy --noconfirm \
    visual-studio-code-bin google-chrome \
    1password
