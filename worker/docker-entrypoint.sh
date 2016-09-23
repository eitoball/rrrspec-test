#!/bin/sh
set -ex

bundle exec rrrspec-server worker --no-daemonize
