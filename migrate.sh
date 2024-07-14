#!/usr/bin/env bash

HOSTNAME=$(hostname)

# In a now-terribly-outdated mishap of naming, the hostname for the 
# current (3.0.11) phpBB server is "new-nga".
if [ "$(hostname)" = "new-nga" ]; then
    # If running on the original 
    steps/old/dump_database.sh
else
    steps/new/install_caddy.sh
    steps/new/install_php.sh
fi


# TODO :figure out how I want to do orchestration
