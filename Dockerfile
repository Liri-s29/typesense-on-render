FROM typesense/typesense:0.24.0

# Create the /tmp/data directory before running Typesense
CMD mkdir -p /tmp/data && \
    /opt/typesense-server/typesense-server \
    --data-dir ${TYPESENSE_DATA_DIR} \
    --api-key ${TYPESENSE_API_KEY} \
    --enable-cors \
    --listen-port 8108

EXPOSE 8108
