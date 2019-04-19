#!/bin/bash

if [ ! -z "$DB_HOST" ]; then
    sed -ri "s#(\"host\":).*#\1\"${DB_HOST}\"\,#" /opt/ssrr/usermysql.json
fi

if [ ! -z "$DB_PORT" ]; then
    sed -ri "s#(\"port\":).*#\1${DB_PORT}\,#" /opt/ssrr/usermysql.json
fi

if [ ! -z "$DB_USERNAME" ]; then
    sed -ri "s#(\"user\":).*#\1\"${DB_USERNAME}\"\,#" /opt/ssrr/usermysql.json
fi

if [ ! -z "$DB_PASSWORD" ]; then
    sed -ri "s#(\"password\":).*#\1\"${DB_PASSWORD}\"\,#" /opt/ssrr/usermysql.json
fi

if [ ! -z "$DB_DATABASE" ]; then
    sed -ri "s#(\"db\":).*#\1\"${DB_DATABASE}\"\,#" /opt/ssrr/usermysql.json
fi

if [ ! -z "$DB_NODEID" ]; then
    sed -ri "s#(\"node_id\":).*#\1\"${DB_NODEID}\"\,#" /opt/ssrr/usermysql.json
fi

cd `dirname $0`
eval $(ps -ef | grep "python " | awk '{print "kill -9 "$1}')
ulimit -n 512000
nohup python /opt/ssrr/server.py m>> /dev/null 2>&1 &
