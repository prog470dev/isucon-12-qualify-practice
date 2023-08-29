-- sqlite から mysql への移行にともない、整合性チェックを通すために最低限必要なインデックスを設定
-- player_score が一つのテーブルにまとまるようになるため、インデックスがないと select が遅くなり API がタイムアウトする
ALTER TABLE player_score ADD INDEX tenant_competition_idx (tenant_id, competition_id);
