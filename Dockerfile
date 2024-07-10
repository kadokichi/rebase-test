FROM ruby:3.2.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs postgresql-client
RUN mkdir /rebase-test
WORKDIR /rebase-test
ADD Gemfile /rebase-test/Gemfile
ADD Gemfile.lock /rebase-test/Gemfile.lock
RUN bundle install
ADD . /rebase-test
