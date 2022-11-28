# Official verified image
FROM ruby:3.1.3-alpine3.15

# Remote git repository <-> Remote container registry
LABEL org.opencontainers.image.source https://github.com/noraj/haiti
# Other metadata
LABEL org.opencontainers.image.authors "noraj (Alexandre ZANNI)"
LABEL org.opencontainers.image.documentation https://noraj.github.io/haiti/
LABEL org.opencontainers.image.licenses MIT
LABEL org.opencontainers.image.description "Hash type identifier (CLI & lib)."

ARG HAITI_VERSION
LABEL org.opencontainers.image.version $HAITI_VERSION

## INSTALL ##
# Install the app
RUN gem install haiti-hash -v $HAITI_VERSION --no-document

## BUILD ##

# drop privileges
RUN adduser -s /bin/true -u 1337 -D -H noraj
USER noraj

CMD ["/usr/local/bundle/bin/haiti", "-h"]
