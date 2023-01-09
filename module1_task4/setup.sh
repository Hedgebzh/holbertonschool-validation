#!/bin/bash
sudo apt-get update
sudo apt install hugo
sudo apt install make wget
wget https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_0.84.0_Linux-64bit.deb
apt install ./hugo_0.84.0_Linux-64bit.deb
make build
