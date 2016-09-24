FROM ruby:2.3.1

MAINTAINER Eito Katagiri <eitoball@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get upgrade -y

RUN curl -sL https://deb.nodesource.com/setup_4.x | bash - && apt-get install -y nodejs

COPY web/docker-entrypoint.sh /usr/local/bin/
RUN chmod 755 /usr/local/bin/docker-entrypoint.sh
ENTRYPOINT ["docker-entrypoint.sh"]

COPY web /app/web/

WORKDIR /app/web

RUN bundle
