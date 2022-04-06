FROM cytopia/ansible-lint:5
RUN mkdir -p /config
COPY .ansible-lint /config
RUN chmod -R 777 /config
COPY ["src", "/src/"]
RUN chmod -R 777 /src
ENTRYPOINT ["/src/entrypoint.sh"]