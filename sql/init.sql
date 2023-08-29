DELETE FROM tenant WHERE id > 100;
DELETE FROM visit_history WHERE created_at >= '1654041600';
UPDATE id_generator SET id=2678400000 WHERE stub='a';
ALTER TABLE id_generator AUTO_INCREMENT=2678400000;

-- 元々 SQLite にあったテナント関連テーブルの更新
-- 本来なら init.sh の中でやるべきだが POST /initialize でタイムアウトするので、ベンチ実行前に reset_mysql_tenant.sh を実行しておく
