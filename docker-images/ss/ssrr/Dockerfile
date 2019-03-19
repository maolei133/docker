FROM alpine

WORKDIR /usr/local/ss

ENV PYENV_ROOT /root/.pyenv
ENV PATH $PYENV_ROOT/shims:$PYENV_ROOT/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$PATH

RUN apk update \
	&& apk upgrade \
	&& apk add --no-cache \
	curl wget \
	git bash build-base libffi-dev openssl-dev bzip2-dev zlib-dev readline-dev linux-headers \
	&& rm -rf /var/cache/apk/*

RUN curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash

RUN pyenv install 3.7.2 && pyenv global 3.7.2

CMD ["python3"]