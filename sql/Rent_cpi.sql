-- 1. First and last Darwin values
SELECT date, rent_index FROM cpi_rents
WHERE city = 'Darwin' ORDER BY date LIMIT 1;

SELECT date, rent_index FROM cpi_rents
WHERE city = 'Darwin' ORDER BY date DESC LIMIT 1;

-- 2. Average index by year and city
SELECT city, substr(date,1,4) AS year, ROUND(AVG(rent_index),2) AS avg_index
FROM cpi_rents GROUP BY city, year ORDER BY city, year;

-- 3. Percentage change from start to latest, by city
SELECT a.city,
       ROUND((b.rent_index - a.rent_index) * 100.0 / a.rent_index, 1) AS pct_change
FROM cpi_rents a
JOIN cpi_rents b ON a.city = b.city
WHERE a.date = '2022-07-01' AND b.date = '2026-09-01'
ORDER BY pct_change DESC;