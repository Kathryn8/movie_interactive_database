-- script that prepares a MySQL server for the project
CREATE DATABASE IF NOT EXISTS my_movie_db;
CREATE USER IF NOT EXISTS 'kathryn'@'localhost' IDENTIFIED BY 'kathryn_pwd';
GRANT ALL ON my_movie_db.* TO 'kathryn'@'localhost';
GRANT SELECT ON performance_schema.* TO 'kathryn'@'localhost';

-- create the database schema
CREATE TABLE IF NOT EXISTS Genres (
id INT,
name VARCHAR(256),
PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS Directors (
id INT,
firstName VARCHAR(256),
lastName VARCHAR(256),
PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS Actors (
id INT,
firstName VARCHAR(256),
lastName VARCHAR(256),
PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS Movies (
id INT,
movieTitle VARCHAR(256),
moviePlot VARCHAR(256),
directorID INT,
actorID INT,
genreID INT,
releaseYear INT,
rating FLOAT,
movieLength INT.
PRIMARY KEY (id),
FOREIGN KEY (directorID) REFERENCES Directors(id),
FOREIGN KEY (actorID) REFERENCES Actors(id)
FOREIGN KEY (genreID) REFERENCES Genres(id)
);
