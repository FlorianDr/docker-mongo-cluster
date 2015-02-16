FROM benno208/mongod:0.1.2

# Create the MongoDB config directory
RUN mkdir -p /data/configdb
RUN chown mongodb:mongodb /data/configdb

# Copy configuration
ADD start.sh /etc/service/mongod/run
RUN chmod +x /etc/service/mongod/run

EXPOSE 27019
