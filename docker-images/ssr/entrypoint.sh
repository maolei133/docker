#!/bin/bash

USER_HOST=${USER_HOST:-"127.0.0.1"}
USER_PORT=${USER_PORT:-"3306"}
USER_USER=${USER_USER:-"ssrpanel"}
USER_PASSWORD=${USER_PASSWORD:-"ssrpanel"}
USER_DB=${USER_DB:-"ssrpanel"}
USER_NODE_ID=${USER_NODE_ID:-"0"}


sed -i "s#USER_HOST#${USER_HOST}#" ${WORK}/usermysql.json
sed -i "s#USER_PORT#${USER_PORT}#" ${WORK}/usermysql.json
sed -i "s#USER_USER#${USER_USER}#" ${WORK}/usermysql.json
sed -i "s#USER_PASSWORD#${USER_PASSWORD}#" ${WORK}/usermysql.json
sed -i "s#USER_DB#${USER_DB}#" ${WORK}/usermysql.json
sed -i "s#USER_NODE_ID#${USER_NODE_ID}#" ${WORK}/usermysql.json


#调用FROM中的启动文件
python server.py