#!/bin/sh
# `/sbin/setuser mongodb` runs the given command as the user `mongodb`.

exec /sbin/setuser mongodb /usr/bin/mongos \
  --logpath /var/log/mongodb/mongos.log \
  --logappend
