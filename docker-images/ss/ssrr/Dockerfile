FROM alpine

ENV PYTHON_VERSION 3.7.2

ENV WORK /usr/local/ss

WORKDIR ${WORK}

RUN apk update \
	&& apk upgrade \
	&& apk add --no-cache curl wget bash \
	git libffi-dev ncurses-dev openssl-dev readline-dev tk-dev xz-dev zlib-dev linux-headers \
	&& rm -rf /var/cache/apk/*

RUN curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash

CMD ["python3"]