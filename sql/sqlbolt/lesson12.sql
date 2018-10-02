SELECT director, COUNT(*)
FROM movies
GROUP BY director;

SELECT movies.director, SUM(boxoffice.domestic_sales + boxoffice .international_sales) AS total
FROM movies
INNER JOIN boxoffice
ON movies.id = boxoffice.movie_id
GROUP BY director;
