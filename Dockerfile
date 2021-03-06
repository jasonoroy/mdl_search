FROM ruby:2.3.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN mkdir /mdl_search
WORKDIR /mdl_search
RUN mkdir ./thumbnails
ADD . /mdl_search
RUN bundle config build.nokogiri --use-system-libraries
RUN bundle install --without production