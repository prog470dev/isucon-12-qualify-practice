#!/bin/sh

# スクリプトの配置場所をカレントとする
cd `dirname $0`

# TODO: -m でルーティングに合わせた正規表現を設定する
sudo alp json \
  --sort sum  -r \
  -m "/api/organizer/player/\w+/disqualified,/api/organizer/competition/\w+/finish,/api/organizer/competition/\w+/score,/api/player/player/\w+,/api/player/competition/\w+/ranking" \
  -o count,method,uri,min,avg,max,sum \
  < /var/log/nginx/access.log \
  > ../reports/alp.log

sudo pt-query-digest /var/log/mysql/mysql-slow.log \
  > ../reports/pt-query-digest.log
  