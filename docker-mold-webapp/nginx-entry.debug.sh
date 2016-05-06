#!/bin/bash

cd /opt
rm -fr mold-webapp
git clone -b $BRANCH https://github.com/mo-ld/mold-webapp 
cp -r mold-webapp/* /usr/share/nginx/html/
rm -fr mold-webap
sed -i "s/\$HOST_NAME/$HOST_NAME/g" /etc/nginx/nginx.conf
sed -i "s/\$HOST_PORT/$HOST_PORT/g" /etc/nginx/nginx.conf
nginx -g 'daemon off;'
