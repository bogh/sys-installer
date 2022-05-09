#!/bin/bash

sudo apt-get install -y make build-essential libssl-dev zlib1g-dev \
    libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev \
    libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl

sudo apt install -y python3-venv

curl https://pyenv.run | bash

cat >> ~/.bashrc <<- EOM
export PATH="\$HOME/.pyenv/bin:\$PATH"
eval "\$(pyenv init -)"
eval "\$(pyenv virtualenv-init -)"
EOM

curl -sSL https://install.python-poetry.org | python3 -
