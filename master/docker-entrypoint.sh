#!/bin/sh
set -ex

service ssh start

mkdir -p /var/run/sshd /tmp/rrrspec-rsync /tmp/rrrspec-log-texts

bundle exec rake rrrspec:server:db:create rrrspec:server:db:migrate

bundle exec rrrspec-server server --no-daemonize
