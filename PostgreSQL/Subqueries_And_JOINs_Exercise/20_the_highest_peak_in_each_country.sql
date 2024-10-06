WITH row_number AS (
  SELECT
    c.country_name,
    COALESCE(p.peak_name, '(no highest peak)') AS highest_peak_name,
    COALESCE(MAX(p.elevation), '0') AS highest_peak_elevation,
    CASE
      WHEN m.mountain_range IS NULL THEN '(no mountain)'
      ELSE m.mountain_range
    END AS mountain,
    ROW_NUMBER () OVER (
      PARTITION BY c.country_name
      ORDER BY p.elevation DESC
      ) AS ranked_rows
  FROM
    countries AS c
  LEFT JOIN
    mountains_countries AS mc
  USING
    (country_code)
  LEFT JOIN
    peaks AS p
  USING
    (mountain_id)
  LEFT JOIN
    mountains AS m
  ON
    p.mountain_id = m.id
  GROUP BY
    c.country_name,
    p.peak_name,
    p.elevation,
    m.mountain_range
  ORDER BY
    c.country_name,
    highest_peak_elevation DESC
)
SELECT
  country_name,
  highest_peak_name,
  highest_peak_elevation,
  mountain
FROM
  row_number
WHERE
  ranked_rows = 1