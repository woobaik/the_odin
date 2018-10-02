SELECT role, COUNT(*) AS number FROM employees
GROUP BY role;

SELECT SUM(years_employed)
FROM employees
GROUP BY role
HAVING role = "Engineer"
