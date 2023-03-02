#!/bin/bash

apt-get update -y && apt-get upgrade -y
apt-get install openjdk-19-jre-headless -y
apt-get install groovy -y
apt-get install chromium-browser -y
apt-get install chromium-chromedriver -y
apt-get install git -y

#Add local domain for regression test
echo '127.0.0.1       doms' >> /etc/hosts

# Install docker https://docs.docker.com/engine/install/ubuntu/
mkdir -m 0755 -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  
 apt-get update -y
 apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
