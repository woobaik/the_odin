SELECT DISTINCT buildings.building_name
FROM buildings
INNER JOIN employees
ON buildings.building_name = employees.building;

SELECT building_name, capacity
FROM buildings

SELECT distinct buildings.building_name, employees.role
FROM buildings
LEFT JOIN employees
ON buildings.building_name = employees.building
