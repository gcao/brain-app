#!/bin/bash

set -e

source $HOME/.rvm/scripts/rvm
rvm use 2.2.3
bundle install

# PROC_NAME is a unique string to be used by kill command
export PROC_NAME=workspace
export PROCESS=`ps aux | grep $PROC_NAME | grep -v grep | awk '{print $2}'`
test -n "$PROCESS" && kill -9 $PROCESS

export RAILS_ENV=production
export PORT=8888

# https://wiki.jenkins-ci.org/display/JENKINS/ProcessTreeKiller
BUILD_ID=dontKillMe bundle exec puma -C config/puma.rb -d

