CREATE DATABASE games;
USE games

CREATE TABLE my_games
(
game_name INT NOT NULL,
game_release INT NOT NULL,
game_age INT NOT NULL, 
game_country VARCHAR(30) NOT NULL, 
game_platform VARCHAR(30) NOT NULL,
game_category VARCHAR(30) NOT NULL,
CONSTRAINT pk_games
PRIMARY KEY (game_name)
CONSTRAINT fk_game
PRIMARY KEY (game_name)
REFERENCES Games(game_name)
);
