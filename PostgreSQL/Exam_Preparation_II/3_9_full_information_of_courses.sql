SELECT
  ad.name,
  CASE
    WHEN EXTRACT('hour' FROM co.start) BETWEEN 6 AND 20 THEN 'Day'
    ELSE 'Night'
  END AS day_time,
  co.bill,
  cl.full_name,
  c.make,
  c.model,
  cat.name AS category_name
FROM
  courses AS co
JOIN
  addresses AS ad
ON
  ad.id = co.from_address_id
JOIN
  clients AS cl
ON
  cl.id = co.client_id
JOIN
  cars AS c
ON
  c.id = co.car_id
JOIN
  categories AS cat
ON
  cat.id = c.category_id
ORDER BY
  co.id;