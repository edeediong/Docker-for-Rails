FROM ruby:2.7
RUN apt-get update -yqq
RUN apt-get install -yqq --no-install-recommends nodejs
COPY . /usr/src/app/
WORKDIR /usr/src/app
RUN bundle install
