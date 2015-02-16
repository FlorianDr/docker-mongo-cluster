#!/bin/sh
# `/sbin/setuser mongodb` runs the given command as the user `mongodb`.

exec /sbin/setuser mongodb /usr/bin/mongos  --logpath /var/log/mongodb/server1.log --logappend \
  --configdb \
  192.168.59.103:49183,192.168.59.103:49184,192.168.59.103:49185
