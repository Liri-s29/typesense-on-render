FROM typesense/typesense:0.24.0

EXPOSE 8108

CMD ["/bin/sh", "-c", "mkdir -p /tmp/data && /opt/typesense-server/typesense-server --data-dir /tmp/data --api-key $TYPESENSE_API_KEY --enable-cors --listen-port 8108"]
