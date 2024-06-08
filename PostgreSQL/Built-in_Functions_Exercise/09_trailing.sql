SELECT
  continent_name,
  TRIM(TRAILING FROM continent_name) AS TRIM
FROM
  continents;