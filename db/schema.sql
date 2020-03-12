DROP DATABASE IF EXISTS rpg_db;
CREATE DATABASE rpg_db;
USE rpg_db;

CREATE TABLE player_info (
    player_id int(11) NOT NULL AUTO_INCREMENT,
    player_email VARCHAR(55) NOT NULL,
    PRIMARY KEY (player_id)
);

CREATE TABLE character_info (
    character_id INT(11) NOT NULL AUTO_INCREMENT,
    character_level INT(11) NOT NULL,
    character_class VARCHAR(255) NOT NULL,
    character_attack INT(11) NOT NULL,
    character_health INT(11) NOT NULL,
    character_defense INT(11) NOT NULL,
    character_icon VARCHAR(255) NOT NULL,
    user_id int(11) NOT NULL,
    PRIMARY KEY (character_id),
    KEY character_user (user_id),
    CONSTRAINT user_id FOREIGN KEY (user_id) REFERENCES user_info (player_id)
);