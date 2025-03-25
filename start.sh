#!/bin/sh

# Create the data directory
mkdir -p /tmp/data

# Start Typesense server
/opt/typesense-server/typesense-server \
  --data-dir /tmp/data \
  --api-key ${TYPESENSE_API_KEY} \
  --enable-cors \
  --listen-port 8108
