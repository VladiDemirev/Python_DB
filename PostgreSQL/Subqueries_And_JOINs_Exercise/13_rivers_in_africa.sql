SELECT
  c.country_name,
  r.river_name
FROM
  countries_rivers AS cr
FULL JOIN
  countries AS c
USING
  (country_code)
FULL JOIN
  rivers as r
ON
  r.id = cr.river_id
WHERE
  c.continent_code = 'AF'
ORDER BY
  c.country_name ASC
LIMIT 5;