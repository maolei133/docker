FROM python:3.7.2-alpine3.8

ENV WORK=/usr/local/ssrr

WORKDIR ${WORK}

RUN wget https://github.com/ssrpanel/shadowsocksr/archive/master.zip -P /tmp \
	&& unzip /tmp/master -d /tmp \
	&& mv /tmp/shadowsocksr-master/* ./ \
	&& rm -rf /tmp \
	&& pip install -r requestment.txt