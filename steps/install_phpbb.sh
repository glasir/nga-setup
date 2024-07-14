#!/usr/bin/env bash

mkdir -p /srv
cd srv
wget https://download.phpbb.com/pub/release/3.3/3.3.12/phpBB-3.3.12.zip
unzip phpBB-3.3.12.zip
mv phpBB3 /srv/forum.nogoblinsallowed.com/
