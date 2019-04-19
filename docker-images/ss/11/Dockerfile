FROM python:3.7-alpine

RUN apk update && apk upgrade && \
	apk add --no-cache \
	bash \
	build-base \
	libffi-dev \
	openssl-dev && \
	rm -rf /var/cache/apk/* && \
	wget https://github.com/ssrpanel/shadowsocksr/archive/master.zip -P /tmp && \
	unzip /tmp/master -d /tmp && \
	mv /tmp/shadowsocksr-master/ /opt/ssrr && \
	pip install -r /opt/ssrr/requestment.txt && \
	rm -rf /tmp

ADD entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

CMD ["python3"]
