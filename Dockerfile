FROM ruby:3.1.2-alpine

RUN apk --no-cache add make \
  gcc \
  g++ \
  musl-dev \
  binutils\ 
  autoconf \
  automake \
  libtool \
  pkgconfig \
  git \
  libpq-dev

WORKDIR /var/app

ADD Gemfile Gemfile.lock ./

RUN bundle install

ADD . .