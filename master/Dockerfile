FROM ruby:2.3.1

MAINTAINER Eito Katagiri <eitoball@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y openssh-server rsync

RUN mkdir -m 500 -p /root/.ssh
COPY common/dot_ssh/id_rsa.pub /root/.ssh/authorized_keys
RUN chmod 400 /root/.ssh/authorized_keys

COPY master/docker-entrypoint.sh /usr/local/bin/
RUN chmod 755 /usr/local/bin/docker-entrypoint.sh
ENTRYPOINT ["docker-entrypoint.sh"]

COPY master /app/master/

WORKDIR /app/master

RUN mv /app/master/dot_rrrspec /app/master/.rrrspec
RUN bundle
