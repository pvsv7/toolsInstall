#!/bin/bash

# Update the package index
sudo yum update -y

# Install Java 17
sudo yum install -y java-17-openjdk

# Add Jenkins repository
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

# Install fontconfig (required for Jenkins) and Jenkins
sudo yum install -y fontconfig
sudo yum install -y jenkins

# Start and enable Jenkins
sudo systemctl start jenkins
sudo systemctl enable jenkins

echo "Jenkins installation completed successfully!"
