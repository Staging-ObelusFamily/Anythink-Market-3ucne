FROM ruby:2.7.0

RUN apt-get update -qq && apt-get install -y build-essential nodejs
RUN bundle config set force_ruby_platform true

RUN rm -f /tmp/server.pid