FROM ruby:3.1.2-alpine

ARG BUNDLE_PATH=/var/app/vendor/bundle
ARG BUNDLE_WITHOUT='development test'
ARG BUNDLE_DEPLOYMENT=true

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

RUN bundle config set path ${BUNDLE_PATH}}
RUN bundle config set without ${BUNDLE_WITHOUT}
RUN bundle config set deployment ${BUNDLE_DEPLOYMENT}

RUN bundle install --jobs 5 --retry 3

ADD . .