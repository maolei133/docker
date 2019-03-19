FROM alpine

ENV WORK /usr/local/ss

WORKDIR ${WORK}

RUN apk update \
	&& apk upgrade \
	&& apk add --no-cache \
	curl wget \
	git bash build-base libffi-dev openssl-dev bzip2-dev zlib-dev readline-dev linux-headers \
	&& rm -rf /var/cache/apk/*

RUN curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash

RUN echo 'export PATH="/root/.pyenv/bin:\$PATH"' >> ~/.bashrc && \
    echo 'eval "\$(pyenv init -)"' >> ~/.bashrc && \
	echo 'eval "\$(pyenv virtualenv-init -)"' >> ~/.bashrc
	
RUN pyenv install 3.7.2 && pyenv global 3.7.2

CMD ["python3"]