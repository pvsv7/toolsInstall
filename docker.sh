#!/bin/bash

# Update the package index and install yum-utils
sudo yum install -y yum-utils

# Add Docker repository
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Install Docker components
sudo yum install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Start Docker service
sudo systemctl start docker

# Enable Docker service to start on boot
sudo systemctl enable docker

# Add user 'centos' to the Docker group
sudo usermod -aG docker centos

# Print Docker version to verify installation
docker --version

echo "Docker installation completed successfully."
echo "Please log out and log back in for the group changes to take effect."
