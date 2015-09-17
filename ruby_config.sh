#!/bin/bash

rbenv() {
	cd /usr/local/share
	rm -fr ./rbenv
	git clone https://github.com/sstephenson/rbenv.git ./rbenv
	echo 'export PATH="$PATH:/usr/local/share/rbenv/bin"' > /etc/profile.d/rbenv.sh
	echo 'eval "$(rbenv init -)"' >> /etc/profile.d/rbenv.sh
	chmod 0755 /etc/profile.d/rbenv.sh

	git clone https://github.com/sstephenson/ruby-build.git ./rbenv/plugins/ruby-build
	echo 'export PATH="$PATH:/usr/local/share/rbenv/plugins/ruby-build/bin"' >> /etc/profile.d/dart.sh
	chmod 755 /etc/profile.d/dart.sh
}

rbenv
