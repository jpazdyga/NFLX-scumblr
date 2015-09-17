#!/bin/bash

export PATH="$PATH:/usr/local/share/rbenv/bin:/usr/local/share/rbenv/plugins/ruby-build/bin"
cd /root/Scumblr
pwd
../.rbenv/shims/bundle exec sidekiq -l log/sidekiq.log
