FROM ruby:2.6.5-alpine

RUN \
	apk add --no-cache --virtual build-dependencies --update \
	build-base \
	linux-headers \
	mariadb-client \
	mariadb-dev \
	tzdata \
	nodejs \
	yarn

ENV APP_ROOT /app
RUN mkdir ${APP_ROOT}
WORKDIR ${APP_ROOT}

ADD ./Gemfile ${APP_ROOT}/Gemfile
ADD ./Gemfile.lock ${APP_ROOT}/Gemfile.lock

RUN gem install bundler
RUN bundle install
ADD . ${APP_ROOT}