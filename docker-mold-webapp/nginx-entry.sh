#!/bin/bash

sed -i "s/\$HOST_NAME/$HOST_NAME/g" /etc/nginx/nginx.conf
sed -i "s/\$HOST_PORT/$HOST_PORT/g" /etc/nginx/nginx.conf
nginx -g 'daemon off;'
