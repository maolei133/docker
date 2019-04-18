FROM maolei133/python-pyenv

RUN wget https://github.com/ssrpanel/shadowsocksr/archive/master.zip -P /tmp \
	&& unzip /tmp/master -d /tmp \
	&& mv /tmp/shadowsocksr-master/* ./ \
	&& pip install -r requestment.txt \
	&& rm -rf /tmp