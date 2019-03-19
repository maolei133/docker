FROM python:3.6-alpine

ENV WORK=/usr/local/ss

WORKDIR ${WORK}

RUN apk update \
	&& apk upgrade \
	&& apk add --no-cache wget \
	libffi-dev ncurses-dev openssl-dev readline-dev tk-dev xz-dev zlib-dev linux-headers \
	&& rm -rf /var/cache/apk/*

RUN wget https://github.com/ssrpanel/shadowsocksr/archive/master.zip -P /tmp \
	&& unzip /tmp/master -d /tmp \
	&& mv /tmp/shadowsocksr-master/* ./ \
	&& pip install -r requestment.txt \
	&& rm -rf /tmp
	
CMD ["python3"]