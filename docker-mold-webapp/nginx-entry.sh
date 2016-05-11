#!/bin/bash

sed -i "s/\$HOST_NAME/$HOST_NAME/g" /etc/nginx/nginx.conf
sed -i "s/\$HOST_PORT/$HOST_PORT/g" /etc/nginx/nginx.conf
sed -i "s/\$HOST_NAME/$HOST_NAME/g" /usr/share/nginx/html/config/swagger.json
sed -i "s/\$HOST_PORT/$HOST_PORT/g" /usr/share/nginx/html/config/swagger.json
nginx -g 'daemon off;'
