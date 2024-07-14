#!/usr/bin/env bash

sudo apt-get install software-properties-common
sudo add-apt-repository -y ppa:ondrej/php
sudo apt update
sudo apt install -y php8.2 php8.2-mbstring php8.2-fpm php8.2-zip
