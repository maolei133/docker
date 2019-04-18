FROM richarvey/nginx-php-fpm:1.3.10

ENV nginx_conf /etc/nginx/sites-available/default.conf

ENV SSRPANEL_TAG V4.8.0
ENV SSRPANEL_DIR /var/www/html

RUN docker-php-ext-install bcmath && \
	rm -Rf ${SSRPANEL_DIR}/* && \
	git clone --branch $SSRPANEL_TAG https://github.com/ssrpanel/SSRPanel.git ${SSRPANEL_DIR} && \
	rm -Rf ${SSRPANEL_DIR}/scripts/* && \
	cp ${SSRPANEL_DIR}/.env.example ${SSRPANEL_DIR}/.env && \
	# NGINX 加入URL重写规则	
	sed -ri \
		-e "s#root ${SSRPANEL_DIR};#root ${SSRPANEL_DIR}/public;#" \
		-e 's#try_files \$uri \$uri\/ =404;#try_files $uri $uri/ /index.php$is_args$args;#' \
		${nginx_conf}

# 错误: exec user process caused "no such file or directory",sh文件改成unix
# nginx-php-fpm在环境变量RUN_SCRIPTS=1时 会按顺序执行scripts中的脚本
ADD 00-init.sh ${SSRPANEL_DIR}/scripts/00-init.sh
