SELECT movies.title, boxoffice.domestic_sales, international_sales
FROM movies
INNER JOIN boxoffice
WHERE movies.id = boxoffice.movie_id;


SELECT movies.title, boxoffice.domestic_sales + boxoffice.international_sales AS SUM
FROM movies
INNER JOIN boxoffice
ON movies.id = boxoffice.movie_id
WHERE boxoffice.domestic_sales < boxoffice.international_sales;

SELECT movies.title , boxoffice.rating
FROM movies
INNER JOIN boxoffice
on movies.id = boxoffice.movie_id
ORDER BY rating DESC;
