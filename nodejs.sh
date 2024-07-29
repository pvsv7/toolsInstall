#!/bin/bash

# Update the package index
sudo dnf update -y

# Disable the current Node.js module
sudo dnf module disable nodejs -y

# Enable the Node.js 18 module
sudo dnf module enable nodejs:18 -y

# Install Node.js
sudo dnf install -y nodejs

# npm -v