SELECT max(years_employed)
FROM employees;

SELECT role,  AVG(years_employed)
FROM employees GROUP BY role;

SELECT building, SUM(years_employed)
FROM employees GROUP BY building;
