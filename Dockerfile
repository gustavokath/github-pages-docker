FROM ruby:alpine

RUN apk add --no-cache bash
RUN apk update && apk add --virtual build-dependencies build-base

RUN mkdir /site
WORKDIR /site
COPY Gemfile /site

RUN gem install bundler
RUN bundle install

CMD ["jekyll", "serve", "-H", "0.0.0.0", "-P", "4000", "--verbose"]
