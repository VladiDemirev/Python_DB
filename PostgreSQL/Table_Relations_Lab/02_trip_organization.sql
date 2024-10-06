SELECT
  driver_id,
  vehicle_type,
  CONCAT(first_name, ' ', last_name) AS driver_name
FROM
  vehicles AS v,
  campers AS c
WHERE
  c.id = v.driver_id;