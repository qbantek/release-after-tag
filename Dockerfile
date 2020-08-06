FROM ruby:2.7-alpine
RUN apk add --no-cache git && \
    gem install gem-release

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
