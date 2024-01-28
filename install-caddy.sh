#!/bin/bash

# Install prerequisite packages
sudo apt install -y debian-keyring debian-archive-keyring apt-transport-https curl

# Add Caddy's official GPG key
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/gpg.key' | sudo gpg --dearmor -o /usr/share/keyrings/caddy-stable-archive-keyring.gpg

# Add Caddy's stable repository
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/debian.deb.txt' | sudo tee /etc/apt/sources.list.d/caddy-stable.list

# Update package lists
sudo apt update

# Install Caddy
sudo apt install caddy