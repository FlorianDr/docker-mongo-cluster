FROM phusion/baseimage:0.9.16

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

# Add 10gen official apt source to the sources list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
RUN echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list

# Install MongoDB
RUN apt-get update
RUN apt-get install -y mongodb-org-server

# Create the MongoDB data directory
RUN mkdir -p /data/db
RUN chown -R mongodb:mongodb /data
RUN chown -R mongodb:mongodb /var/log/mongodb

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Creating runit entry
RUN mkdir /etc/service/mongod
ADD start.sh /etc/service/mongod/run
RUN chmod +x /etc/service/mongod/run
