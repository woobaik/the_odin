SELECT movies.title, (boxoffice.domestic_sales + international_sales) / 1000000 AS SALES
FROM movies
INNER JOIN boxoffice
ON movies.id = boxoffice.movie_id;


SELECT movies.title, rating * 10 AS rating_in_percent
FROM movies
INNER JOIN boxoffice
ON movies.id = boxoffice.movie_id;


SELECT movies.title, movies.year
FROM movies
WHERE movies.year % 2 = 0
