FROM ruby:2.3.1

MAINTAINER Eito Katagiri <eitoball@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y rsync

RUN mkdir -m 500 -p /root/.ssh
COPY common/dot_ssh/config common/dot_ssh/id_rsa /root/.ssh/
RUN chmod 400 /root/.ssh/*

COPY client /app/client/

WORKDIR /app/client

RUN mv /app/client/dot_rrrspec /app/client/.rrrspec
RUN bundle
