#!/bin/fish

yay -Sy lsd exa bat rm-improved xcp
yay -Sy dust ripgrep fd bottom grex procs
yay -Sy topgrade broot tokei

# omf
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

# plugins
omf update

omf install https://github.com/fabioantunes/fish-nvm
omf install https://github.com/edc/bass

omf install pyenv
omf install z

mkdir -p $HOME/.config/fish
CONFIG_FILE=$HOME/.config/fish/config.fish

# printf "\n\nzoxide init fish | source" >> $CONFIG_FILE
# printf "\n\nalias cd='z'" >> $CONFIG_FILE
printf "\n\nalias cp='xcp'" >> $CONFIG_FILE
printf "\n\nalias ls='lsd --header --color=always --group-directories-first'" >> $CONFIG_FILE
