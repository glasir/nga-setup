#!/usr/bin/env bash

# Dump the forum database and all its tables to a file.
# Skips problematic tables.
# Requires that the password be provided ~/.my.cnf
mysqldump \
  --ignore-table nga_forums.phpbb_search_wordmatch \
  --ignore-table nga_forums.phpbb_search_wordlist \
  --ignore-table nga_forums.phpbb_modules \
  nga_forums \
  > nga_forums.sql

# Creates the forum database (with some patches for those problematic tables).
# Again, requires that credentials be set up in ~/.my.cnf
mysql -h db-nga-do-user-247516-0.c.db.ondigitalocean.com -P 25060 < files/create_database.sql

# Clones the old forum database to the new one.
mysql -h db-nga-do-user-247516-0.c.db.ondigitalocean.com -P 25060 nga_forums < nga_forums.sql
