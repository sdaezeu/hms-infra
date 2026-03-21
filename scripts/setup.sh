#!/bin/bash

echo "🔧 Setting up server..."

sudo apt update
sudo apt install docker.io docker-compose git -y

sudo systemctl start docker
sudo systemctl enable docker

sudo usermod -aG docker $USER

mkdir -p /var/www

echo "✅ Setup complete!"