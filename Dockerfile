FROM typesense/typesense:0.24.0

COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 8108

CMD ["/start.sh"]
