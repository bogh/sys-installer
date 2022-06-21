#!/bin/bash

# sudo pacman -Syu
sudo pacman -Sy --needed --noconfirm \
    terminator fish copyq vim mc base-devel git \
    krita yakuake smplayer copyq meld \
    python-poetry pyenv nvm

./scripts/yay.sh

# ./scripts/code.sh
# ./scripts/kde.sh
# ./scripts/node.sh
# ./scripts/pyenv.sh
# ./scripts/fish-addons.sh
# ./scripts/flatpak.sh
