#!/bin/bash
chmod +x *.sh
wget https://github.com/nakagami/CyMySQL/archive/REL_0_9_4.tar.gz
tar -zxvf REL_0_9_4.tar.gz >>/dev/zero
mv CyMySQL-REL_0_9_4 CyMySQL
rm -rf cymysql
mkdir cymysql
mv CyMySQL/cymysql ./
rm -rf CyMySQL
rm -rf REL_0_9_4.tar.gz
chmod +x shadowsocks/*.sh