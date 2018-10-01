SELECT city, population FROM north_american_cities WHERE COUNTRY="Canada";

SELECT city FROM north_american_cities WHERE country="United States" ORDER BY latitude DESC;

SELECT city, longitude FROM north_american_cities
WHERE longitude < -87.629798
ORDER BY longitude ASC;

SELECT city FROM north_american_cities WHERE country = "Mexico" ORDER BY population DESC limit 2;

SELECT city, population FROM north_american_cities WHERE country = "United States" ORDER BY population DESC LIMIT 2 OFFSET 2;
