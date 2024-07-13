#!/bin/bash

# Update the package index
sudo yum update -y

# Install Java 17
sudo yum install -y java-17-openjdk

echo "Java installation completed successfully!"