#!/bin/sh
# `/sbin/setuser mongodb` runs the given command as the user `mongodb`.

exec /sbin/setuser mongodb /usr/bin/mongod --replSet rs1 \
  --logpath /var/log/mongodb/server1.log \
  --logappend \
  --noprealloc \
  --smallfiles \
