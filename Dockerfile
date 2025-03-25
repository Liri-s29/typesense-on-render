FROM typesense/typesense:0.25.2

COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 8108

ENTRYPOINT ["/bin/sh", "/start.sh"]
