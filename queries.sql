-- This SQL file contains all the queries we ran to move data to PostgreSQL tables. The column names and types of the tables are the same as in their .csv files.

-- Create table movies

CREATE TABLE movies (
  movieId INTEGER,
  title VARCHAR(200),
  genres VARCHAR(200),
  PRIMARY KEY (movieId)
);

-- Insert data in table movies

COPY movies
FROM '/home/avani/UMass/Fall 2022/CS 532/Project/ml-latest/movies.csv'
DELIMITER ','
CSV HEADER;


-- Create table ratings

CREATE TABLE ratings (
  userId INTEGER,
  movieId INTEGER,
  rating NUMERIC,
  timestamp INTEGER
)

-- Insert data in table ratings

COPY ratings
FROM '/home/avani/UMass/Fall 2022/CS 532/Project/ml-latest/ratings.csv'
DELIMITER ','
CSV HEADER;


-- Create table tags

CREATE TABLE tags (
  userId INTEGER,
  movieId INTEGER,
  tag VARCHAR(250),
  timestamp INTEGER
)

-- Insert data in table tags

COPY tags
FROM '/home/avani/UMass/Fall 2022/CS 532/Project/ml-latest/tags.csv'
DELIMITER ','
CSV HEADER;


-- Create table genome_scores

CREATE TABLE genome_scores (
  movieId INTEGER,
  tagId INTEGER,
  relevance NUMERIC
)

-- Insert data in table genome_scores

COPY genome_scores
FROM '/home/avani/UMass/Fall 2022/CS 532/Project/ml-latest/genome-scores.csv'
DELIMITER ','
CSV HEADER;


-- Create table genome_tags

CREATE TABLE genome_tags (
  tagId INTEGER,
  tag VARCHAR(100),
  PRIMARY KEY(tagId)
)

-- Insert data in table genome_tags

COPY genome_tags
FROM '/home/avani/UMass/Fall 2022/CS 532/Project/ml-latest/genome-tags.csv'
DELIMITER ','
CSV HEADER;


-- Create table links

CREATE TABLE links (
  movieId INTEGER,
  imdbId INTEGER,
  tmdbId INTEGER,
  PRIMARY KEY(movieId)
)

-- Insert data in table links

COPY links
FROM '/home/avani/UMass/Fall 2022/CS 532/Project/ml-latest/links.csv'
DELIMITER ','
CSV HEADER;
