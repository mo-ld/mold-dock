#!/bin/bash

cd /opt
rm -fr mold-api
git clone https://github.com/mo-ld/mold-api.git
cd mold-api
/bin/bash -l -c "rvm requirements && rvm install 2.3.0 && gem install bundler --no-ri --no-rdoc && bundle install"
wait
source /etc/profile.d/rvm.sh
rvm use ruby-2.3.0
cd /opt/mold-api/
unicorn -p 9393 --env production
