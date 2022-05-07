#!/bin/bash
sudo apt install flatpak
sudo apt install gnome-software-plugin-flatpak

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install -y flathub com.slack.Slack
# flatpak install -y flathub com.visualstudio.code
flatpak install -y flathub com.dropbox.Client
flatpak install -y flathub info.smplayer.SMPlayer
flatpak install -y flathub com.github.hluk.copyq
flatpak install -y flathub org.gimp.GIMP
flatpak install -y flathub org.gnome.meld
flatpak install -y flathub org.deluge_torrent.deluge
