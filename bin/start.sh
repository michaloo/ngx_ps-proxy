#!/bin/bash

cat /ngx_ps-proxy/conf/nginx.conf | templater > /usr/local/nginx/conf/nginx.conf

exec /usr/local/nginx/sbin/nginx
