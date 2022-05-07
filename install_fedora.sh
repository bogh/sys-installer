#!/bin/bash

dnf install -y terminator fish mc neovim copyq gnome-tweaks

dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# docker compose

dnf install -y arc-theme
dnf install -y chrome-gnome-shell

# Docker
dnf remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-selinux \
                  docker-engine-selinux \
                  docker-engine
dnf -y install dnf-plugins-core
dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo
dnf install -y docker-ce docker-ce-cli containerd.io


# docker compose
curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

mkdir -p /etc/docker
echo -e '{\n\t"hosts": ["tcp://0.0.0.0:2375"]\n}' > /etc/docker/daemon.json
mkdir -p /etc/systemd/system/docker.service.d
echo -e '[Service]\nExecStart=\nExecStart=/usr/bin/dockerd\n' > /etc/systemd/system/docker.service.d/docker.conf
systemctl daemon-reload

systemctl enable docker
systemctl restart docker

# Fonts

mkdir /usr/share/fonts/monaco
mkdir /usr/share/fonts/firacode

cp Fonts/FiraCode_1.204/ttf/* /usr/share/fonts/firacode/
cp Fonts/MONACO.TTF /usr/share/fonts/monaco/monaco.ttf

fc-cache -v

rpm --import https://packages.microsoft.com/keys/microsoft.asc
sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
dnf check-update
dnf install -y code

dnf install -y vlc


# python installations
pip install virtualenv
dnf install -y python3-devel mariadb-devel
