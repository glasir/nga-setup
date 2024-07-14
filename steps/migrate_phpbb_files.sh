#!/usr/bin/env bash

# Copy the important files from the old phpBB installation to this machine.
ssh nga zip /tmp/nga-forum.zip /var/www/forum.nogoblinsallowed.com/{files,images,store}
scp nga:/tmp/nga-forum.zip nga-forum.zip

# Copy them back up to the new NGA instance.
scp nga-forum.zip nga-beta:/tmp/nga-forum.zip
ssh nga-beta unzip /tmp/nga-forum.zip -d /srv/forum.nogoblinsallowed.com/

# Template out the new forum's config.php with the appropriate database info.
# Then install it to the appropriate directory.
envsubst -v FORUM_DB_PASSWORD templates/config.php > config.php
scp config.php nga-beta:/srv/forum.nogoblinsallowed.com/config.php
