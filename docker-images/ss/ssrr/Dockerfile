FROM alpine

ENV PYTHON_VERSION 3.7.2

ENV WORK /usr/local/ss

WORKDIR ${WORK}

RUN apk update \
	&& apk upgrade \
	&& apk add --no-cache bash curl wget \
	git libffi-dev ncurses-dev openssl-dev readline-dev tk-dev xz-dev zlib-dev linux-headers \
	&& rm -rf /var/cache/apk/*

RUN curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash

ENV PATH /root/.pyenv/bin:\$PATH

RUN pyenv install ${PYTHON_VERSION} && pyenv global ${PYTHON_VERSION}

RUN wget https://github.com/ssrpanel/shadowsocksr/archive/master.zip -P /tmp \
	&& unzip /tmp/master -d /tmp \
	&& mv /tmp/shadowsocksr-master/* ./ \
	&& pip install -r requestment.txt \
	&& rm -rf /tmp

CMD ["python3"]