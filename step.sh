#!/bin/bash
set -ex
gem update bundler --force
bundle install

## Running Danger
bundle exec danger

#
# --- Exit codes:
# The exit code of your Step is very important. If you return
#  with a 0 exit code `bitrise` will register your Step as "successful".
# Any non zero exit code will be registered as "failed" by `bitrise`.
