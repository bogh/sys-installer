#!/usr/bin/env bash

sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update

sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

sudo apt-get autoremove -y

# echo -e '{\n\t"hosts": ["tcp://0.0.0.0:2375"]\n}' > /etc/docker/daemon.json
# mkdir -p /etc/systemd/system/docker.service.d
# echo -e '[Service]\nExecStart=\nExecStart=/usr/bin/dockerd\n' > /etc/systemd/system/docker.service.d/docker.conf

# sudo systemctl daemon-reload

# sudo systemctl enable docker
# sudo systemctl restart docker

sudo service docker restart


# https://docs.docker.com/compose/install/

sudo curl -SL https://github.com/docker/compose/releases/download/v2.5.0/docker-compose-linux-x86_64 -o /usr/bin/docker-compose
sudo chmod a+x /usr/bin/docker-compose

# https://docs.docker.com/compose/completion/
# curl \
#     -L https://raw.githubusercontent.com/brgmnn/fish-docker-compose/master/completions/docker-compose.fish \
#     -o ~/.config/fish/completions/

mkdir -p ~/.config/fish/completions
wget https://raw.githubusercontent.com/brgmnn/fish-docker-compose/master/completions/docker-compose.fish -P ~/.config/fish/completions/

# https://docs.docker.com/install/linux/linux-postinstall/
# sudo groupadd docker
sudo usermod -aG docker $USER
