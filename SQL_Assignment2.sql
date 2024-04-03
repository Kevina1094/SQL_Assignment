USE cars;

SELECT *
FROM cars.car_dekho;

SELECT count(*)
FROM cars.car_dekho;

SELECT count(name)
FROM cars.car_dekho
WHERE year = '2023';

SELECT count(name), year
FROM cars.car_dekho
WHERE year IN (2020,2021,2022)
GROUP BY Year;

SELECT count(year), year
FROM cars.car_dekho
GROUP BY year;	

SELECT count(name), year, fuel
FROM cars.car_dekho
WHERE year = 2020
AND fuel = 'diesel';

SELECT count(name), year, fuel
FROM cars.car_dekho
WHERE year = 2020
AND fuel = 'petrol';

SELECT fuel, year, count(year)
FROM cars.car_dekho
GROUP BY fuel
ORDER BY year;

SELECT COUNT(name), year
FROM cars.car_dekho
GROUP BY year Having count(year) > '100';

SELECT *, Count(*)
FROM cars.car_dekho
WHERE year BETWEEN 2015 AND 2023;

SELECT *
FROM cars.car_dekho
WHERE year BETWEEN 2015 AND 2023;




