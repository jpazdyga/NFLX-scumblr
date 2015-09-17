#!/bin/bash
cd ~

. /etc/profile.d/rbenv.sh
. /etc/profile.d/dart.sh
git clone https://github.com/Netflix/Scumblr.git
cd Scumblr
bundle install
rake db:create
rake db:schema:load

../.rbenv/versions/2.0.0-p481/bin/rails r "user = User.new; user.email = '$SCUMBLR_EMAIL'; user.password = '$SCUMBLR_PASSWD'; user.password_confirmation = '$SCUMBLR_PASSWD'; user.admin = true; user.save"
bundle install
