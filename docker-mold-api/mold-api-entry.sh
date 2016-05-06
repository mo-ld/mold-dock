#!/bin/bash

source /etc/profile.d/rvm.sh
rvm use ruby-2.3.0
cd /opt/mold-api/
unicorn -p 9393 --env production
