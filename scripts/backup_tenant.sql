CREATE TABLE competition_bak LIKE competition;
INSERT INTO competition_bak SELECT * FROM competition;
CREATE TABLE player_bak LIKE player;
INSERT INTO player_bak SELECT * FROM player;
CREATE TABLE player_score_bak LIKE player_score;
INSERT INTO player_score_bak SELECT * FROM player_score;
