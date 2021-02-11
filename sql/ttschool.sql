DROP DATABASE IF EXISTS ttschool;
CREATE DATABASE `ttschool`; 
USE `ttschool`;


CREATE TABLE subject (
	id INT(11) NOT NULL AUTO_INCREMENT,
	name VARCHAR(50) NOT NULL,
	PRIMARY KEY (id)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

CREATE TABLE school (
	id INT(11) NOT NULL AUTO_INCREMENT,
	name VARCHAR(50) NOT NULL,
	year INT(11) NOT NULL,
	PRIMARY KEY (id),
	UNIQUE(name, year)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

CREATE TABLE `group` (
	id INT(11) NOT NULL AUTO_INCREMENT,
	name VARCHAR(50) NOT NULL,
	room VARCHAR(50) NOT NULL,
	schoolid INT(11) NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (schoolid) REFERENCES school (id) ON DELETE CASCADE
) ENGINE=INNODB DEFAULT CHARSET=utf8;

CREATE TABLE trainee (
	id INT(11) NOT NULL AUTO_INCREMENT,
	firstname VARCHAR(50) NOT NULL,
	lastname VARCHAR(50) NOT NULL,
	rating INT(11) NOT NULL,
	groupid INT(11) DEFAULT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (groupid) REFERENCES `group` (id) ON DELETE SET NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8;

CREATE TABLE group_subject (
	groupid INT(11) NOT NULL,
	subjectid INT(11) NOT NULL,
	FOREIGN KEY (groupid) REFERENCES `group` (id) ON DELETE CASCADE,
	FOREIGN KEY (subjectid) REFERENCES subject (id) ON DELETE CASCADE
) ENGINE=INNODB DEFAULT CHARSET=utf8;

CREATE TABLE cities (
	id INT(11) NOT NULL AUTO_INCREMENT,
	name VARCHAR(50) NOT NULL,
	PRIMARY KEY (id)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

INSERT INTO cities (name) VALUES ("london"), ("canberra"), ("ottawa"), ("paris"), ("rome")




