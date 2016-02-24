#!/bin/bash

set -e

source $HOME/.rvm/scripts/rvm
rvm use 2.2.3
bundle install

export PROCESS=`ps aux | grep brain-app | grep -v grep | awk '{print $2}'`
test -n "$PROCESS" && kill -9 $PROCESS

export RAILS_ENV=production
bundle exec puma -C config/puma.rb -d

