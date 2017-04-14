#!/usr/bin/env sh

envsubst < /etc/nginx/conf.d/static.conf.template > /etc/nginx/conf.d/static.conf

nginx -g 'daemon off;' &
child=$!

trap "kill $child" SIGTERM SIGINT
wait $child
