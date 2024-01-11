FROM ruby:2.6.5-alpine3.10

RUN apk add --no-cache git tzdata
RUN gem install highline -v 2.1.0 && \
    gem install faraday-net_http -v 3.0.2 && \
    gem install faraday -v 2.8.1 && \
    gem install octokit -v "4.25.1" && \
    gem install git-pr-release -v "0.8.0"
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
