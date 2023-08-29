#!/bin/sh

# スクリプトの配置場所をカレントとする
cd `dirname $0`

for i in $(seq $1 $2)
do
	date
  	echo "dump $i."
  	../sql/sqlite3-to-sql ../../initial_data/$i.db > ./sqlite_dump/db_$i.sql 
  	echo "import $i."
	mysql -uisucon -pisucon --host 127.0.0.1 --port 3306 isuports < ./sqlite_dump/db_$i.sql
done