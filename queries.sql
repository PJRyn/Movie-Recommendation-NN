Drop TABLE movies;
Drop TABLE ratings;

CREATE TABLE movies (
    movie_id integer,
	title char(255),
    genres char(255),
   	PRIMARY KEY (movie_id)
 );

Select * from movies;
 
 CREATE TABLE ratings(
  	user_id integer,
	movie_id integer,
    rating integer,
	timestamps integer
);

Select * from ratings
-- Join 2 tables
SELECT
	movies.movie_id,
	movies.title,
	movies.genres,
	ratings.user_id,
    ratings.rating,
	ratings.timestamps
FROM
	movies
INNER JOIN
	 ratings
ON
	movies.movie_id = ratings.movie_id;