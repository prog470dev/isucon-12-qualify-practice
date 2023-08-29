TRUNCATE TABLE competition;
INSERT INTO competition SELECT * FROM competition_bak;
TRUNCATE TABLE player;
INSERT INTO player SELECT * FROM player_bak;
TRUNCATE TABLE player_score;
INSERT INTO player_score SELECT * FROM player_score_bak;