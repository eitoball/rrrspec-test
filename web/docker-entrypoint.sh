#!/bin/sh
set -ex

bundle exec rake assets:precompile
bundle exec puma -b tcp://0.0.0.0:9292
