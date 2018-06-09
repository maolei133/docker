FROM richarvey/nginx-php-fpm:1.3.10

ENV SS_PANEL_DIR=/var/www/ssrpanel

WORKDIR ${SS_PANEL_DIR}

RUN apk add --no-cache mysql-client	&& \
	rm -rf /var/cache/apk/* && \
	git clone https://github.com/ssrpanel/ssrpanel.git tmp && mv tmp/.git . && rm -rf tmp && git reset --hard

ADD nginx-site.conf /etc/nginx/sites-enabled/default.conf
ADD app.php ${SS_PANEL_DIR}/config
ADD database.php ${SS_PANEL_DIR}/config

RUN php composer.phar install	&& \
	php artisan key:generate	&& \
    chmod -R 777 storage/

ADD entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]