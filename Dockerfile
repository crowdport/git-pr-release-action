FROM ruby:2.6.5-alpine3.10

RUN apk add --no-cache git tzdata
RUN gem install \
        'highline:2.1.0' \
        'faraday-net_http:3.0.2' \
        'faraday:2.8.1' \
        'public_suffix:5.1.1' \
        'octokit:4.25.1' \
        'git-pr-release:0.8.0'
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
