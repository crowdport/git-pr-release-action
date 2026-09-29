FROM ruby:3.4-alpine

RUN apk add --no-cache git tzdata
RUN gem install 'git-pr-release:2.6.0'
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
