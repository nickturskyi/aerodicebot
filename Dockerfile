FROM ruby:2.7

EXPOSE 9292

RUN echo 'deb http://deb.debian.org/debian bullseye contrib' > /etc/apt/sources.list.d/bullseye-contrib.list
RUN apt update && apt --yes --quiet install ghostscript

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY aerodicebot.rb /usr/src/app
COPY config.ru /usr/src/app
COPY Gemfile /usr/src/app
COPY .env /usr/src/app

RUN bundle install

CMD rackup --host 0.0.0.0 --port 9292
