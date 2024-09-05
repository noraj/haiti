# Official verified image
# https://hub.docker.com/_/ruby
FROM ruby:3.3.5-alpine3.19

# Metadata
LABEL org.opencontainers.image.title="haiti" \
      org.opencontainers.image.description="Hash type identifier (CLI & lib)." \
      org.opencontainers.image.authors="noraj (Alexandre ZANNI)" \
      org.opencontainers.image.vendor="noraj (Alexandre ZANNI)" \
      org.opencontainers.image.documentation="https://noraj.github.io/haiti/" \
      org.opencontainers.image.source="https://github.com/noraj/haiti" \
      org.opencontainers.image.licenses="MIT"

ARG HAITI_VERSION
LABEL org.opencontainers.image.version="$HAITI_VERSION"

## INSTALL ##
# Install the app
RUN gem install haiti-hash -v $HAITI_VERSION --no-document

## BUILD ##

# drop privileges
RUN adduser -s /bin/true -u 1337 -D -H noraj
USER noraj

CMD ["/usr/local/bundle/bin/haiti", "-h"]
