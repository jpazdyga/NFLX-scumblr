#!/bin/bash
. /etc/profile.d/rbenv.sh
. /etc/profile.d/dart.sh
echo $PATH
gem install -V sidekiq
rbenv update
rbenv install 2.0.0-p481
rbenv global 2.0.0-p481
ruby -v
gem install -V bundler --no-ri --no-rdoc
rbenv rehash
gem install -V rails -v 4.0.9
