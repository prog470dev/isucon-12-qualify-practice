#!/bin/sh

# スクリプトの配置場所をカレントとする
cd `dirname $0`

mysql -uisucon -pisucon --host 127.0.0.1 --port 3306 isuports < ./reset_tenant.sql