# nga-setup

Migrates NGA to a new server.

Requires that a `.env` file exist with the following settings:

* `LOCAL_DB_PASSWORD`: password for the old NGA database (user: `root`)
* `MANAGED_DB_PASSWORD`: password for the new NGA database (user: `doadmin`)
* `FORUM_DB_PASSWORD`: password for the new NGA database (user: `forum`)
