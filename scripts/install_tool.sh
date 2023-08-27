#!/bin/sh

# スクリプトの配置場所をカレントとする
cd `dirname $0`

# alp
wget https://github.com/tkuchiki/alp/releases/download/v1.0.14/alp_linux_amd64.tar.gz
tar -xvzf alp_linux_amd64.tar.gz
sudo install ./alp /usr/local/bin/alp
rm alp_linux_amd64.tar.gz
rm alp

# pt-query-digest
sudo apt update
sudo apt install percona-toolkit

