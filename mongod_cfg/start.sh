#!/bin/sh
# `/sbin/setuser mongodb` runs the given command as the user `mongodb`.

exec /sbin/setuser mongodb /usr/bin/mongod \
  --configsvr \
  --logpath /var/log/mongodb/mongod.log \
  --logappend \
  --noprealloc \
  --smallfiles \
