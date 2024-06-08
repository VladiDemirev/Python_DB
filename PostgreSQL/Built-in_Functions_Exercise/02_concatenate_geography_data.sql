CREATE OR REPLACE VIEW
  view_continents_countries_currencies_details
AS
SELECT
  CONCAT(c.continent_name, ': ', c.continent_code) AS continent_details,
  CONCAT_WS(' - ', co.country_name, co.capital, co.area_in_sq_km, 'km2') AS country_information,
  CONCAT(cu.description, ' (', cu.currency_code, ')') AS currencies
FROM
  continents AS c,
  countries AS co,
  currencies AS cu
WHERE
  c.continent_code = co.continent_code
    AND
  co.currency_code = cu.currency_code
ORDER BY
  country_information ASC,
  currencies ASC;