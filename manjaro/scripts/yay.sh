#!/bin/bash

sudo pacman -Sy --needed base-devel git yay

yay -Sy --noconfirm aur/nvm nodejs npm pnpm

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

yay -Sy --noconfirm visual-studio-code-bin google-chrome 1password 1password-cli go-task-bin

yay -S z
