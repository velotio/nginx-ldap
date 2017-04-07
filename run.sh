#!/bin/sh
set -e
if test ! -e /nginx.conf; then
    cp /etc/nginx/nginx.conf /nginx.conf
fi
exec dockerize -stdout /var/log/nginx/access.log -stderr /var/log/nginx/error.log /usr/sbin/nginx -c /nginx.conf -g "daemon off;"
