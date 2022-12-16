#databases list on instance
show databases;
#quiz_db database creation
CREATE DATABASE quiz_db;
USE quiz_db;

CREATE TABLE player (
	id_player int NOT NULL AUTO_INCREMENT,
    name_player varchar(20),
    score_player int,
    PRIMARY KEY(id_player)
);

CREATE TABLE party (
	id_party	int NOT NULL AUTO_INCREMENT,
    party_name	varchar(20),
    id_player	int,
    PRIMARY KEY(id_party),
    foreign key (id_player) references player(id_player)
);

CREATE TABLE question(
    id_question        INTEGER,
    desc_question    VARCHAR(255),
    difficulte int,
    PRIMARY KEY (id_question)
);

CREATE TABLE game_question (
    id_party            INTEGER,
    id_question        INTEGER,
    PRIMARY KEY (id_party, id_question),
    FOREIGN KEY (id_party) REFERENCES party(id_party),
    FOREIGN KEY (id_question) REFERENCES question(id_question)
);
CREATE TABLE answer (
    desc_answer        VARCHAR(255),
    is_correct        BOOLEAN,
    id_question        INTEGER,
    FOREIGN KEY (id_question) REFERENCES question(id_question)
);

#quiz_dba owner creation
#CREATE USER 'quiz_dba'@'localhost' IDENTIFIED BY 'P@ssw0rd';
GRANT ALL PRIVILEGES ON quiz_db.* TO quiz_dba@localhost;
FLUSH PRIVILEGES;
#tables list on quiz_db
show tables;