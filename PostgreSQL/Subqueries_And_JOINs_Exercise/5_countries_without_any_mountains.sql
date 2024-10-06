-- SELECT
--   COUNT(c.country_code) AS countries_without_mountains
-- FROM
--   countries AS c
-- LEFT JOIN
--   mountains_countries AS mc
-- USING
--   (country_code)
-- WHERE
--   mountain_id IS NULL;
 
-- OPTION 2
 
SELECT
  COUNT(country_codes) AS countries_without_mountains
FROM
(
  SELECT
    c.country_code AS country_codes
  FROM
    countries AS c
  LEFT JOIN
mountains_countries AS mc
  USING
    (country_code)
  WHERE
    mc.mountain_id IS NULL
) AS countries_without_mountains;