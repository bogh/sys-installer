#!/usr/bin/env bash

# https://docs.docker.com/install/linux/docker-ce/ubuntu/
sudo apt-get install -y \
 apt-transport-https \
 ca-certificates \
 curl \
 gnupg-agent \
 software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
echo -e "\ndeb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" | sudo tee -a /etc/apt/sources.list

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli -y
sudo apt-get autoremove -y

echo -e '{\n\t"hosts": ["tcp://0.0.0.0:2375"]\n}' > /etc/docker/daemon.json
mkdir -p /etc/systemd/system/docker.service.d
echo -e '[Service]\nExecStart=\nExecStart=/usr/bin/dockerd\n' > /etc/systemd/system/docker.service.d/docker.conf

sudo systemctl daemon-reload

sudo systemctl enable docker
sudo systemctl restart docker



# https://docs.docker.com/compose/install/
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/bin/docker-compose
sudo chmod +x /usr/bin/docker-compose

# https://docs.docker.com/compose/completion/
sudo curl -L https://raw.githubusercontent.com/docker/compose/1.24.1/contrib/completion/bash/docker-compose -o /etc/bash_completion.d/docker-compose

# https://docs.docker.com/install/linux/linux-postinstall/
sudo groupadd docker
sudo usermod -aG docker $USER
