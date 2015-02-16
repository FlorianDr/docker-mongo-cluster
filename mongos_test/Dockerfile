# Use phusion/baseimage as base image. To make your builds
# reproducible, make sure you lock down to a specific version, not
# to `latest`! See
# https://github.com/phusion/baseimage-docker/blob/master/Changelog.md
# for a list of version numbers.
FROM benno208/mongos:0.1.0

ADD start.sh /etc/service/mongos/run
RUN chmod +x /etc/service/mongos/run

EXPOSE 27017
