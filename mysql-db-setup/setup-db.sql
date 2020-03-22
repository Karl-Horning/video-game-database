-- All are MySQL commands

CREATE DATABASE video_game_database;

USE video_game_database;

CREATE TABLE video_game_titles (
	vg_title_id int(11) NOT NULL AUTO_INCREMENT,
	vg_title VARCHAR(150),
	vg_year YEAR(4),
	PRIMARY KEY(vg_title_id)
);

CREATE TABLE video_game_platforms (
	vg_platform_id int(11) NOT NULL AUTO_INCREMENT,
	vg_platform VARCHAR(150),
    UNIQUE(vg_platform),
	PRIMARY KEY(vg_platform_id)
);

CREATE TABLE titles_platforms (
    vg_title_id int(11) UNSIGNED NOT NULL,
    vg_platform_id int(11) UNSIGNED NOT NULL,
    PRIMARY KEY(vg_title_id, vg_platform_id),
    INDEX(vg_title_id, vg_platform_id) 
);

INSERT INTO video_game_platforms (vg_platform)
VALUES ('Playstation 4'),
    ('Playstation 3'),
    ('Vita'),
    ('PSP'),
    ('Switch'),
    ('iOS'),
    ('Mac'),
    ('PC'),
    ('Xbox'),
    ('Xbox One'),
    ('Xbox 360');

INSERT INTO video_game_titles (vg_title, vg_year)
VALUES ('Star Wars: Knights of the Old Republic', '2003'),
    ('Star Wars: Battlefront II', '2005'),
    ('Star Wars: Battlefront', '2004'),
    ('Star Wars Battlefront II', '2017'),
    ('Star Wars Battlefront', '2015'),
    ('Left 4 Dead', '2008'),
    ('Silent Hill: Book of Memories', '2012'),
    ('Assassin\'s Creed Origins', '2017'),
    ('Super Mario Odyssey', '2017');

INSERT INTO titles_platforms (vg_title_id, vg_platform_id)
VALUES (0, 5),
    (0, 6),
    (0, 7),
    (0, 8),
    (1, 7),
    (1, 8),
    (2, 7),
    (2, 8),
    (3, 0),
    (4, 0),
    (5, 6),
    (5, 7),
    (5, 10),
    (6, 2),
    (7, 9),
    (8, 4);