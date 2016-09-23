FROM ruby:2.3.1

MAINTAINER Eito Katagiri <eitoball@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y openssh-server rsync

RUN mkdir -m 500 -p /root/.ssh
COPY common/dot_ssh/config common/dot_ssh/id_rsa /root/.ssh/
RUN chmod 400 /root/.ssh/*

COPY worker/docker-entrypoint.sh /usr/local/bin/
RUN chmod 755 /usr/local/bin/docker-entrypoint.sh
ENTRYPOINT ["docker-entrypoint.sh"]

COPY worker /app/worker/

WORKDIR /app/worker

RUN mv /app/worker/dot_rrrspec /app/worker/.rrrspec
RUN bundle
