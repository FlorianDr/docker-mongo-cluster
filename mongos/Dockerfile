# Use phusion/baseimage as base image. To make your builds
# reproducible, make sure you lock down to a specific version, not
# to `latest`! See
# https://github.com/phusion/baseimage-docker/blob/master/Changelog.md
# for a list of version numbers.
FROM phusion/baseimage:0.9.16

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

# Add 10gen official apt source to the sources list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
RUN echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list

# Install MongoDB
RUN apt-get update
RUN apt-get install -y mongodb-org-mongos

# Create the MongoDB data directory
RUN useradd -UMs /bin/bash mongodb
RUN mkdir -p /var/log/mongodb
RUN mkdir -p /data/db
RUN chown -R mongodb:mongodb /data
RUN chown -R mongodb:mongodb /var/log/mongodb

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir /etc/service/mongos
ADD start.sh /etc/service/mongos/run
RUN chmod +x /etc/service/mongos/run
