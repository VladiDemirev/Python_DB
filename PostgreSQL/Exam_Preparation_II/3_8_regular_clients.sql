SELECT
  c.full_name,
  COUNT(c.id) AS count_of_cars,
  SUM(co.bill) AS total_sum
FROM
  clients AS c
JOIN
  courses AS co
ON
  co.client_id = c.id
GROUP BY
  c.id
HAVING
  COUNT(c.id) > 1
    AND
  SUBSTRING(c.full_name , 2, 1) = 'a'
ORDER BY
  c.full_name ASC;