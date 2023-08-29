#!/bin/sh

# sqlite から msyql にデータを移行するためのスクリプト
# 実行時間短縮のため、10 テナントずつ並列に実行する

# スクリプトの配置場所をカレントとする
cd `dirname $0`

nohup ./migrate_sub.sh 1 10 > ./migrate_log/1 &
nohup ./migrate_sub.sh 11 20 > ./migrate_log/11 &
nohup ./migrate_sub.sh 21 30 > ./migrate_log/21 &
nohup ./migrate_sub.sh 31 40 > ./migrate_log/31 &
nohup ./migrate_sub.sh 41 50 > ./migrate_log/41 &
nohup ./migrate_sub.sh 51 60 > ./migrate_log/51 &
nohup ./migrate_sub.sh 61 70 > ./migrate_log/61 &
nohup ./migrate_sub.sh 71 80 > ./migrate_log/71 &
nohup ./migrate_sub.sh 81 90 > ./migrate_log/81 &
nohup ./migrate_sub.sh 91 100 > ./migrate_log/91 &

# バックアップテーブルの作成
mysql -uisucon -pisucon --host 127.0.0.1 --port 3306 isuports < ./backup_tenant.sql