FROM python:alpine

ENV WORK=/root/shadowsocksr

WORKDIR ${WORK}

RUN apk update \
	&& apk upgrade \
	&& apk add --no-cache bash libsodium git \
	&& rm -rf /var/cache/apk/* \
	&& git clone https://github.com/miseryCN/shadowsocksr.git tmp && mv tmp/.git . && rm -rf tmp && git reset --hard

ADD initcfg.sh ${WORK}
RUN chmod 755 initcfg.sh \
	&& ./initcfg.sh
	
ADD userapiconfig.py ${WORK}
ADD user-config.json ${WORK}
ADD usermysql.json ${WORK}

ADD entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]