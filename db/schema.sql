CREATE DATABASE flashcards_db;

USE flashcards_db;

CREATE TABLE questions(
	id INT NOT NULL AUTO_INCREMENT,
	question TEXT NOT NULL,
	category VARCHAR(255) NOT NULL,
	difficulty INT NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE answers(
	id INT NOT NULL AUTO_INCREMENT,
	answer TEXT NOT NULL,
    question_id INT NOT NULL,
	PRIMARY KEY (id),
    FOREIGN KEY (question_id) REFERENCES questions(id)
);
