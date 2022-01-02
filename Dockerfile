# Author: noraj

# Official verified image
FROM ruby:3.0.3-alpine3.15

ARG HAITI_VERSION

## INSTALL ##
# Install the app
RUN gem install haiti-hash -v $HAITI_VERSION --no-document

## BUILD ##

# drop privileges
RUN adduser -s /bin/true -u 1337 -D -H noraj
USER noraj

CMD ["/usr/local/bundle/bin/haiti", "-h"]
