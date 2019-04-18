#!/bin/bash
# -z 判断 变量的值,是否为空; -变量的值,为空,返回0,为true -变量的值,非空,返回1,为false

sed -ri "s#(APP_KEY=).*#\1base64:A58KJR18DKE4E0fCEv4VfUkX7UlI+r0j/jDUdL4eBlI=#" /var/www/html/.env

# 修改数据库配置
if [ ! -z "$DB_CONNECTION" ]; then
	sed -ri "s#(DB_CONNECTION=).*#\1${DB_CONNECTION}#" /var/www/html/.env
fi

if [ ! -z "$DB_HOST" ]; then
	sed -ri "s#(DB_HOST=).*#\1${DB_HOST}#" /var/www/html/.env
fi

if [ ! -z "$DB_PORT" ]; then
	sed -ri "s#(DB_PORT=).*#\1${DB_PORT}#" /var/www/html/.env
fi

if [ ! -z "$DB_DATABASE" ]; then
	sed -ri "s#(DB_DATABASE=).*#\1${DB_DATABASE}#" /var/www/html/.env
fi

if [ ! -z "$DB_USERNAME" ]; then
	sed -ri "s#(DB_USERNAME=).*#\1${DB_USERNAME}#" /var/www/html/.env
fi

if [ ! -z "$DB_PASSWORD" ]; then
	sed -ri "s#(DB_PASSWORD=).*#\1${DB_PASSWORD}#" /var/www/html/.env
fi


# 修改redis配置
if [ ! -z "$REDIS_HOST" ]; then
	sed -ri "s#(REDIS_HOST=).*#\1${REDIS_HOST}#" /var/www/html/.env
fi

if [ ! -z "$REDIS_PORT" ]; then
	sed -ri "s#(REDIS_PORT=).*#\1${REDIS_PORT}#" /var/www/html/.env
fi

if [ ! -z "$REDIS_PASSWORD" ]; then
	sed -ri "s#(REDIS_PASSWORD=).*#\1${REDIS_PASSWORD}#" /var/www/html/.env
fi