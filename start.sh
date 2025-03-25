#!/bin/sh

# Ensure the data dir exists
mkdir -p /tmp/data

echo "✅ /tmp/data created"

# Start Typesense in the background
/opt/typesense-server/typesense-server \
  --data-dir /tmp/data \
  --api-key ${TYPESENSE_API_KEY} \
  --enable-cors \
  --listen-port 8108 &

# Wait for server to be ready
echo "⏳ Waiting for Typesense to be ready..."
until curl -s http://localhost:8108/health | grep '"ok":true'; do
  sleep 1
done

echo "🚀 Typesense is up and running!"
