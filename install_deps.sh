#!/bin/bash

apt-get update -y && apt-get upgrade -y
apt-get install openjdk-19-jre-headless -y
apt-get install groovy -y
apt-get install chromium-browser -y
apt-get install chromium-chromedriver -y
