FROM ruby:2.6.1

# change default shell
SHELL ["/bin/bash", "-c"]

# set environment
ENV LANG C.UTF-8

# install packages
# RUN set -x \
#   && apt -y update \
#   && apt -y install cmake python2.7-dev golang fuse nodejs mysql-client

# change default work directory
WORKDIR /usr/local/src

COPY . .

# bundle install
RUN gem install bundler:2.0.1
RUN bundle install --path=vendor/bundle

EXPOSE 4567
